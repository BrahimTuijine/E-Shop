import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static String get fileName => '.env';

  static String get apiUrl => switch (kDebugMode) {
        true => dotenv.env['API_URL_DEV'] ?? 'api not found',
        _ => dotenv.env['API_URL_PROD'] ?? 'api not found'
      };
}
