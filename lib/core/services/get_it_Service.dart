import 'package:fantasy/Features/Auth/Data/AuthRepo/AuthRepoImpli.dart';
import 'package:fantasy/Features/Auth/Domain/AuthRepos/AuthRepo.dart';
import 'package:fantasy/core/services/FirebaseAuth_Service.dart';
import 'package:fantasy/core/services/Firebase_FirestoreService.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup_Getit() {
  getIt.registerSingleton<firebaseAuthService>(firebaseAuthService());
  getIt.registerSingleton<FirebaseFirestoreservice>(FirebaseFirestoreservice());
  getIt.registerSingleton<AuthRepo>(Authrepoimpli(
    authService: getIt<firebaseAuthService>(),
  ));
}
