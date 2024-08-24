import 'package:e_shop/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failureToMessage/map_failure_to_message.dart';
import '../../../data/models/authentication_models_export.dart';
import '../../../domain/usecases/sing_in_usecase.dart';

part 'sing_in_bloc.freezed.dart';
part 'sing_in_event.dart';
part 'sing_in_state.dart';

@injectable
class SingInBloc extends Bloc<SingInEvent, SingInState> {
  final SingInUseCase singInUseCase;

  SingInBloc({required this.singInUseCase}) : super(const _SingInInitial()) {
    on<SingInEvent>((event, emit) async {
      emit(const SingInState.loading());

      final result = await singInUseCase(event.email, event.password);

      result.fold((failure) {
        emit(SingInState.error(message: mapFailureToMessage(failure)));
      }, (result) {
        box!.put('user', result.id);
        emit(SingInState.loaded(result: result));
      });
    });
  }
}
