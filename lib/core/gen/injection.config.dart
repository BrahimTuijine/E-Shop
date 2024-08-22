// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:http/http.dart' as _i519;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/products/data/datasources/products_data_source.dart'
    as _i156;
import '../../features/products/data/repositories/products_repository_impl.dart'
    as _i1045;
import '../../features/products/domain/repositories/products_repository.dart'
    as _i27;
import '../../features/products/domain/usecases/get_products_usecase.dart'
    as _i15;
import '../../features/products/presentation/blocs/get_products/get_products_bloc.dart'
    as _i270;
import '../network/http_client.dart' as _i1069;
import '../network/network.dart' as _i855;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final httpClientModule = _$HttpClientModule();
  gh.factory<_i855.ConnectivityModule>(() => _i855.ConnectivityModule());
  gh.lazySingleton<_i519.Client>(() => httpClientModule.httpClient);
  gh.lazySingleton<_i855.NetworkInfo>(() => _i855.NetworkInfoImpl(
      connectivityResult: gh<_i855.ConnectivityModule>()));
  gh.lazySingleton<_i156.ProductsDataSource>(
      () => _i156.ProductsDataSourceImpl(client: gh<_i519.Client>()));
  gh.lazySingleton<_i27.ProductsRepository>(() => _i1045.ProductsRepositoryImpl(
        dataSource: gh<_i156.ProductsDataSource>(),
        networkInfo: gh<_i855.NetworkInfo>(),
      ));
  gh.lazySingleton<_i15.GetProductsUseCase>(
      () => _i15.GetProductsUseCase(gh<_i27.ProductsRepository>()));
  gh.factory<_i270.GetProductsBloc>(() =>
      _i270.GetProductsBloc(getProductsUseCase: gh<_i15.GetProductsUseCase>()));
  return getIt;
}

class _$HttpClientModule extends _i1069.HttpClientModule {}
