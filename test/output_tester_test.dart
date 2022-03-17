import 'package:output_tester/output_tester.dart';
import 'package:test/test.dart';

void main() {
  test('calculate.1', () {
    expect(calculate(), 42);
  });

  test('calculate.2', () async {
    expect(calculate(), 41);
  });

  group('group.a', () {
    test('calculate.3', () {
      expect(calculate(), 42);
    });

    test('calculate.4', () async {
      await Future.delayed(Duration(seconds: 1));

      expect(calculate(), 42);
    });
  });

  test('calculate.2', () async {
    expect(calculate(), 41);
  });

  group('group.b', () {
    test('calculate.3', () async {
      await Future.delayed(Duration(seconds: 1));

      expect(calculate(), 42);
    });

    test('calculate.4', () async {
      await Future.delayed(Duration(seconds: 2));

      expect(calculate(), 42);
    });

    test('calculate.5', () async {
      await Future.delayed(Duration(seconds: 2));

      expect(calculate(), 42);
    });
  });

  test('calculate.3', () async {
    expect(calculate(), 41);
  });
}
