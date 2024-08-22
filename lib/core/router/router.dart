import 'package:e_shop/core/gen/injection.dart';
import 'package:e_shop/features/products/presentation/blocs/get_products/get_products_bloc.dart';
import 'package:e_shop/features/products/presentation/views/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
          create: (context) => getIt<GetProductsBloc>()
            ..add(const GetProductsEvent.getProducts()),
          child: const ProductsScreen(),
        ),
      ),
    ],
  );
}
