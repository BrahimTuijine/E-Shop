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

import '../../features/authentication/data/datasources/authentication_data_source.dart'
    as _i4;
import '../../features/authentication/data/repositories/authentication_repository_impl.dart'
    as _i195;
import '../../features/authentication/domain/repositories/authentication_repository.dart'
    as _i1048;
import '../../features/authentication/domain/usecases/sign_up_usecase.dart'
    as _i298;
import '../../features/authentication/domain/usecases/sing_in_usecase.dart'
    as _i405;
import '../../features/authentication/domain/usecases/sing_out_usecase.dart'
    as _i463;
import '../../features/authentication/presentation/blocs/sign_up/sign_up_bloc.dart'
    as _i59;
import '../../features/authentication/presentation/blocs/sing_in/sing_in_bloc.dart'
    as _i274;
import '../../features/authentication/presentation/blocs/sing_out/sing_out_bloc.dart'
    as _i401;
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
import '../../features/products/presentation/blocs/shopping_cart/shopping_cart_bloc.dart'
    as _i630;
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
  gh.factory<_i630.ShoppingCartBloc>(() => _i630.ShoppingCartBloc());
  gh.lazySingleton<_i519.Client>(() => httpClientModule.httpClient);
  gh.lazySingleton<_i4.AuthenticationDataSource>(
      () => _i4.AuthenticationDataSourceImpl());
  gh.lazySingleton<_i855.NetworkInfo>(() => _i855.NetworkInfoImpl(
      connectivityResult: gh<_i855.ConnectivityModule>()));
  gh.lazySingleton<_i156.ProductsDataSource>(
      () => _i156.ProductsDataSourceImpl(client: gh<_i519.Client>()));
  gh.lazySingleton<_i1048.AuthenticationRepository>(
      () => _i195.AuthenticationRepositoryImpl(
            dataSource: gh<_i4.AuthenticationDataSource>(),
            networkInfo: gh<_i855.NetworkInfo>(),
          ));
  gh.lazySingleton<_i27.ProductsRepository>(() => _i1045.ProductsRepositoryImpl(
        dataSource: gh<_i156.ProductsDataSource>(),
        networkInfo: gh<_i855.NetworkInfo>(),
      ));
  gh.lazySingleton<_i405.SingInUseCase>(
      () => _i405.SingInUseCase(gh<_i1048.AuthenticationRepository>()));
  gh.lazySingleton<_i463.SingOutUseCase>(
      () => _i463.SingOutUseCase(gh<_i1048.AuthenticationRepository>()));
  gh.lazySingleton<_i298.SignUpUseCase>(
      () => _i298.SignUpUseCase(gh<_i1048.AuthenticationRepository>()));
  gh.lazySingleton<_i15.GetProductsUseCase>(
      () => _i15.GetProductsUseCase(gh<_i27.ProductsRepository>()));
  gh.factory<_i274.SingInBloc>(
      () => _i274.SingInBloc(singInUseCase: gh<_i405.SingInUseCase>()));
  gh.factory<_i59.SignUpBloc>(
      () => _i59.SignUpBloc(signUpUseCase: gh<_i298.SignUpUseCase>()));
  gh.factory<_i401.SingOutBloc>(
      () => _i401.SingOutBloc(singOutUseCase: gh<_i463.SingOutUseCase>()));
  gh.factory<_i270.GetProductsBloc>(() =>
      _i270.GetProductsBloc(getProductsUseCase: gh<_i15.GetProductsUseCase>()));
  return getIt;
}

class _$HttpClientModule extends _i1069.HttpClientModule {}
