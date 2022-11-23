import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> main() async {
  test('env_lib test', () async {
    await dotenv.load(fileName: "env/.origin_env");
    String? key = dotenv.maybeGet('PIXABAY_API_KEY', fallback: null);
    expect(true, key ?? false );
  });
}