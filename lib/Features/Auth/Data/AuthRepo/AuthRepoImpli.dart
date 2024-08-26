import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fantasy/Features/Auth/Data/Model/UserModel.dart';
import 'package:fantasy/Features/Auth/Domain/AuthRepos/AuthRepo.dart';
import 'package:fantasy/Features/Auth/Domain/Entities/UserEntity.dart';
import 'package:fantasy/core/errors/Exceptioons.dart';
import 'package:fantasy/core/errors/Failures.dart';
import 'package:fantasy/core/services/FirebaseAuth_Service.dart';

class Authrepoimpli implements AuthRepo {
  final firebaseAuthService authService;
  Authrepoimpli({required this.authService});
  @override
  Future<Either<Failure, Userentity>> SignUp(
      {required String email,
      required String password,
      required String name}) async {
    try {
      var user = await authService.createUserWithEmailAndPassword(
          email, password, name);
      return right(Usermodel.fromFirebase(user));
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.toString()));
    } catch (e) {
      log("Exception from AuthRepoImpli.SignUp in catch With Exception: ${e.toString()}");
      return left(ServerFailure(message: "خطأ غير متوقع"));
    }
  }
}
