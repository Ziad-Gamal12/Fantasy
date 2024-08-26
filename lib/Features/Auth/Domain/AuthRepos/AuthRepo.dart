import 'package:dartz/dartz.dart';
import 'package:fantasy/Features/Auth/Domain/Entities/UserEntity.dart';
import 'package:fantasy/core/errors/Failures.dart';

abstract class AuthRepo {
  Future<Either<Failure, Userentity>> SignUp(
      {required String email, required String password, required String name});
}
