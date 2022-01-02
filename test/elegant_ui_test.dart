import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:elegant_ui/elegant_ui.dart';

void main() {
  const MethodChannel channel = MethodChannel('elegant_ui');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await ElegantUi.platformVersion, '42');
  });
}
