part of 'sing_in_bloc.dart';

@freezed
class SingInEvent with _$SingInEvent {
  const factory SingInEvent.singIn(
      {required String email, required String password}) = SingIn;
}
