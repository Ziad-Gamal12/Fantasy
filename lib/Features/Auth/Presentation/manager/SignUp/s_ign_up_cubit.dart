import 'package:bloc/bloc.dart';
import 'package:fantasy/Features/Auth/Domain/AuthRepos/AuthRepo.dart';
import 'package:fantasy/Features/Auth/Domain/Entities/UserEntity.dart';
import 'package:meta/meta.dart';

part 's_ign_up_state.dart';

class SIgnUpCubit extends Cubit<SIgnUpState> {
  SIgnUpCubit(this.authRepo) : super(SIgnUpInitial());
  final AuthRepo authRepo;

  void SignUp(
      {required String email,
      required String password,
      required String name}) async {
    emit(SIgnUpLoading());
    var result =
        await authRepo.SignUp(email: email, password: password, name: name);
    result.fold((failure) {
      emit(SIgnUpError(errmessage: failure.message));
    }, (Userentity) {
      emit(SIgnUpSuccess(userentity: Userentity));
    });
  }
}
