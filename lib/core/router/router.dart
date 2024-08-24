import 'package:e_shop/core/gen/injection.dart';
import 'package:e_shop/features/authentication/presentation/blocs/sign_up/sign_up_bloc.dart';
import 'package:e_shop/features/authentication/presentation/blocs/sing_in/sing_in_bloc.dart';
import 'package:e_shop/features/authentication/presentation/blocs/sing_out/sing_out_bloc.dart';
import 'package:e_shop/features/authentication/presentation/views/authentication_screen.dart';
import 'package:e_shop/features/products/data/models/products_models_export.dart';
import 'package:e_shop/features/products/presentation/blocs/get_products/get_products_bloc.dart';
import 'package:e_shop/features/products/presentation/views/cart_screen.dart';
import 'package:e_shop/features/products/presentation/views/product_details.dart';
import 'package:e_shop/features/products/presentation/views/products_screen.dart';
import 'package:e_shop/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: box!.get('user') == null ? '/auth' : '/home',
    routes: [
      GoRoute(
        path: '/auth',
        builder: (BuildContext context, GoRouterState state) =>
            BlocProvider<SingInBloc>(
          create: (context) => getIt<SingInBloc>(),
          child: SignInScreen(),
        ),
        routes: [
          GoRoute(
            path: 'singup',
            builder: (context, state) => BlocProvider<SignUpBloc>(
              create: (context) => getIt<SignUpBloc>(),
              child: SignUpScreen(),
            ),
          )
        ],
      ),
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) =>
            MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<GetProductsBloc>()
                ..add(const GetProductsEvent.getProducts()),
            ),
            BlocProvider(
              create: (context) => getIt<SingOutBloc>(),
            ),
          ],
          child: const ProductsScreen(),
        ),
        routes: [
          GoRoute(
            name: 'CartScreen',
            path: 'CartScreen',
            builder: (BuildContext context, GoRouterState state) =>
                const CartScreen(),
          ),
          GoRoute(
            name: 'ProductDetailsScreen',
            path: 'ProductDetailsScreen',
            builder: (BuildContext context, GoRouterState state) =>
                ProductDetailsScreen(
              product: state.extra as Product,
            ),
          ),
        ],
      ),
    ],
  );
}
