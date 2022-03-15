import 'package:output_tester/output_tester.dart';
import 'package:test/test.dart';

void main() {
  test('calculate.1', () {
    expect(calculate(), 42);
  });

  group('group.a', () {
    test('calculate.2', () {
      expect(calculate(), 42);
    });

    test('calculate.3', () async {
      await Future.delayed(Duration(seconds: 1));

      expect(calculate(), 42);
    });
  });

  group('group.b', () {
    test('calculate.2', () async {
      await Future.delayed(Duration(seconds: 1));

      expect(calculate(), 42);
    });

    test('calculate.3', () async {
      await Future.delayed(Duration(seconds: 1));

      await Future.delayed(Duration(seconds: 1));
      expect(calculate(), 42);
    });
  });
}
