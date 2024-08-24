part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _SignUpInitial;
  const factory SignUpState.loading() = _SignUpLoading;
  const factory SignUpState.loaded({required AuthUserModel result}) =
      _SignUpLoaded;
  const factory SignUpState.error({required String message}) = _SignUpError;
}
