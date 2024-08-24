part of 'sing_in_bloc.dart';

@freezed
class SingInState with _$SingInState {
  const factory SingInState.initial() = _SingInInitial;
  const factory SingInState.loading() = _SingInLoading;
  const factory SingInState.loaded({required AuthUserModel result}) =
      _SingInLoaded;
  const factory SingInState.error({required String message}) = _SingInError;
}
