import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;
<<<<<<< HEAD
=======
import '/flutter_flow/flutter_flow_util.dart';
>>>>>>> master

export 'database/database.dart';
export 'storage/storage.dart';

String _kSupabaseUrl = 'https://rzmrtifzceygkbfafemb.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY0MzQ4NjUsImV4cCI6MjA1MjAxMDg2NX0.IaIPRTyK9SVt1bPyW8OMdgC2tJLnF4xSjzmPQpzgJOs';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        headers: {
          'X-Client-Info': 'flutterflow',
        },
        anonKey: _kSupabaseAnonKey,
        debug: false,
        authOptions:
            FlutterAuthClientOptions(authFlowType: AuthFlowType.implicit),
      );
}
