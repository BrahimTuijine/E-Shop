part of 'sing_out_bloc.dart';

@freezed
class SingOutState with _$SingOutState {
  const factory SingOutState.initial() = _SingOutInitial;
  const factory SingOutState.loading() = _SingOutLoading;
  const factory SingOutState.loaded() = _SingOutLoaded;
  const factory SingOutState.error({required String message}) = _SingOutError;
}
