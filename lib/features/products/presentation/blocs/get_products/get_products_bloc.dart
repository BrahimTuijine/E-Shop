import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/usecases/get_products_usecase.dart';
import '../../../../../core/failureToMessage/map_failure_to_message.dart';
import '../../../data/models/products_models_export.dart';
import '../../../domain/entities/products_entities_export.dart';

part 'get_products_bloc.freezed.dart';
part 'get_products_event.dart';
part 'get_products_state.dart';

@injectable
class GetProductsBloc extends Bloc<GetProductsEvent, GetProductsState> {
  final GetProductsUseCase getProductsUseCase;

  GetProductsBloc({required this.getProductsUseCase})
      : super(const _GetProductsInitial()) {
    on<GetProductsEvent>((event, emit) async {
      emit(const GetProductsState.loading());

      final result = await getProductsUseCase(event.data);

      result.fold((failure) {
        emit(GetProductsState.error(message: mapFailureToMessage(failure)));
      }, (result) {
        emit(GetProductsState.loaded(result: result));
      });
    });
  }
}
