part of 's_ign_up_cubit.dart';

@immutable
sealed class SIgnUpState {}

final class SIgnUpInitial extends SIgnUpState {}

final class SIgnUpLoading extends SIgnUpState {}

final class SIgnUpSuccess extends SIgnUpState {
  final Userentity userentity;
  SIgnUpSuccess({required this.userentity});
}

final class SIgnUpError extends SIgnUpState {
  final String errmessage;
  SIgnUpError({required this.errmessage});
}
