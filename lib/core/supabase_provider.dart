import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Throws an unimplemented error if reading before Supabase is initialized.
final supabaseClientProvider = Provider<SupabaseClient>((ref) {
  throw UnimplementedError('Supabase has not been initialized');
});
