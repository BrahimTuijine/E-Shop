import 'package:e_shop/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failureToMessage/map_failure_to_message.dart';
import '../../../domain/usecases/sing_out_usecase.dart';

part 'sing_out_bloc.freezed.dart';
part 'sing_out_event.dart';
part 'sing_out_state.dart';

@injectable
class SingOutBloc extends Bloc<SingOutEvent, SingOutState> {
  final SingOutUseCase singOutUseCase;

  SingOutBloc({required this.singOutUseCase}) : super(const _SingOutInitial()) {
    on<SingOutEvent>((event, emit) async {
      emit(const SingOutState.loading());

      final result = await singOutUseCase();

      result.fold((failure) {
        emit(SingOutState.error(message: mapFailureToMessage(failure)));
      }, (result) {
        box!.delete('user');
        emit(const SingOutState.loaded());
      });
    });
  }
}
