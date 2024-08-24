import 'package:e_shop/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failureToMessage/map_failure_to_message.dart';
import '../../../data/models/authentication_models_export.dart';
import '../../../domain/usecases/sign_up_usecase.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCase signUpUseCase;

  SignUpBloc({required this.signUpUseCase}) : super(const _SignUpInitial()) {
    on<SignUpEvent>((event, emit) async {
      emit(const SignUpState.loading());

      final result = await signUpUseCase(event.email, event.password);

      result.fold((failure) {
        emit(SignUpState.error(message: mapFailureToMessage(failure)));
      }, (result) {
        box!.put('user', result.id);
        emit(SignUpState.loaded(result: result));
      });
    });
  }
}
