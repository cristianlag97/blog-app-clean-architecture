import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppSecrets {
  static String supabaseURL = dotenv.env['SUPABASE_URL'] ?? 'no-url';
  static String supabaseAnonKey = dotenv.env['SUPABASE_KEY'] ?? 'no-token';
}
