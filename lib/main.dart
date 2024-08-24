import 'package:e_shop/core/local_notification/notification.dart';
import 'package:e_shop/core/widgets/no_scroll_effect.dart';
import 'package:e_shop/features/products/presentation/blocs/shopping_cart/shopping_cart_bloc.dart';
import 'package:e_shop/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive/hive.dart';
import 'core/hive/open_box.dart';
import 'core/router/router.dart';
import 'core/bootstrap/bootstrap.dart';
import 'core/environment/environment.dart';
import 'core/gen/injection.dart';

Box? box;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await NotificationService.initializeNotification();
  box = await openBox('eShop');
  await dotenv.load(fileName: Env.fileName);
  configureDependencies();

  bootstrap(() => const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ShoppingCartBloc>(),
      child: MaterialApp.router(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        builder: (context, child) => NoScrollEffect(
          child: GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: child,
          ),
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
