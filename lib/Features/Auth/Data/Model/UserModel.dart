import 'package:fantasy/Features/Auth/Domain/Entities/UserEntity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Usermodel extends Userentity {
  Usermodel({
    required super.name,
    required super.id,
    required super.email,
  });
  factory Usermodel.fromFirebase(User user) {
    return Usermodel(
      name: user.displayName ?? "",
      id: user.uid,
      email: user.email!,
    );
  }
}
