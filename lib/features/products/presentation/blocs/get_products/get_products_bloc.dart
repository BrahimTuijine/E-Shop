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

  final int limit = 10;
  int offset = 0;
  List<Product> oldData = [];

  bool hasReachedMax = false;

  GetProductsBloc({required this.getProductsUseCase})
      : super(const _GetProductsInitial()) {
    on<GetProductsEvent>((event, emit) async {
      await event.when(
        getProducts: () async {
          emit(const GetProductsState.loading());

          final ProductsData productData =
              ProductsData(limit: limit, offset: offset);

          final result = await getProductsUseCase(productData);

          result.fold((failure) {
            emit(GetProductsState.error(message: mapFailureToMessage(failure)));
          }, (result) {
            oldData = result.products;
            hasReachedMax = result.products.length < 10;
            emit(GetProductsState.loaded(
              products: result.products,
              hasReachedMax: hasReachedMax,
            ));
          });
        },
        getMoreProducts: () async {
          if (hasReachedMax) return;
          offset++;
          final result = await getProductsUseCase(
            ProductsData(
              limit: limit,
              offset: offset,
            ),
          );

          result.fold((failure) {
            emit(GetProductsState.error(message: mapFailureToMessage(failure)));
          }, (ProductsModel newData) {
            oldData = [
              ...oldData,
              ...newData.products,
            ];
            hasReachedMax = newData.products.length < 10;
            emit(GetProductsState.loaded(
              products: oldData,
              hasReachedMax: hasReachedMax,
            ));
          });
        },
        searchProducts: (String title, int minPrice, int maxPrice) {
          if (title.isEmpty) {
            emit(GetProductsState.loaded(
                products: oldData, hasReachedMax: hasReachedMax));
          } else {
            final filtredProducts = oldData
                .where((Product product) =>
                    product.title.toLowerCase().contains(title.toLowerCase()))
                .toList();
            emit(GetProductsState.loaded(
                products: filtredProducts, hasReachedMax: hasReachedMax));
          }
        },
      );
    });
  }
}
