import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project_i/core/supabase_provider.dart';

void main() {
  test('supabaseClientProvider injects a SubabaseClient', () {
    final container = ProviderContainer();
    expect(
      () => container.read(supabaseClientProvider), 
      throwsA(anything)
    );
  });
}
