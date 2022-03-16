//import 'package:io/ansi.dart';

void main(List<String> arguments) {
  print('');

  printTest(title: 'test/output_tester_test.dart: calculate.1');
  printTest(
    title: 'test/output_tester_test.dart: calculate.2',
    passed: false,
    details: _stackTrace,
  );

  printTest(title: 'test/output_tester_test.dart: group.a calculate.3');
  printTest(title: 'test/output_tester_test.dart: group.a calculate.4');

  printTest(
    title: 'test/output_tester_test.dart: calculate.2-1',
    passed: false,
    details: _stackTrace,
  );

  printTest(title: 'test/output_tester_test.dart: group.b calculate.3');
  printTest(
    title: 'test/output_tester_test.dart: group.b calculate.4',
    details: _stdout,
  );
  printTest(title: 'test/output_tester_test.dart: group.b calculate.5');

  printTest(
    title: 'test/output_tester_test.dart: calculate.3',
    passed: false,
    details: _stackTrace,
  );

  print('');
  print('Testing complete: 9 tests, 3 failures.');
}

void printTest({
  required String title,
  bool passed = true,
  String details = '',
}) {
  const startGroup = '::group::';
  const endGroup = '::endgroup::';

  // ❌ ❎ ✅ 🛑 ⛔ ✖
  if (passed) {
    print('$startGroup✅ $title');
  } else {
    print('$startGroup❎ $title (failed)');
  }
  print(details.trimRight());
  print(endGroup);
}

const String _stackTrace = '''
  Expected: <41>
    Actual: <42>
  
  package:test_api                    expect
  test/output_tester_test.dart 50:5   main.<fn>
  test/output_tester_test.dart 49:23  main.<fn>
''';

const String _stdout = '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sagittis dictum justo, vitae congue nisi suscipit eget. Mauris auctor dui urna, ut semper mauris aliquam a. Nullam gravida laoreet feugiat. Nulla vulputate metus vitae libero tempor, at egestas libero sodales. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla facilisi. Vivamus a arcu vel arcu imperdiet imperdiet. Proin pulvinar elit consectetur, dignissim erat eget, vulputate leo. Cras pharetra hendrerit mi, nec congue libero tincidunt nec. Pellentesque eu nisi ac enim imperdiet gravida eget et ligula. Praesent id sem ultricies, rutrum tortor quis, suscipit lectus. Suspendisse congue sed dolor quis imperdiet. Curabitur at augue tellus. Donec ligula sem, euismod sit amet sodales ac, semper cursus metus. Ut in erat facilisis, varius elit at, venenatis ante. Aliquam erat volutpat.

Vestibulum lacinia neque a diam efficitur, non elementum ipsum iaculis. Etiam ut diam nec nisi semper semper. Donec vel nisi semper, auctor tortor eu, venenatis ipsum. Vestibulum nec ante suscipit, vulputate augue vel, dictum felis. Sed ut facilisis sapien. Vestibulum molestie est at ipsum posuere, dictum gravida orci ullamcorper. Sed ut ornare ipsum, id molestie purus. Praesent vitae nisi convallis, vulputate nulla eget, ornare leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras consequat est non nunc tempus pulvinar. Morbi aliquet, odio in pretium fermentum, ex erat consectetur est, id congue mi diam sed neque. Nulla volutpat est eu mi tempor, at tempor nibh auctor. In convallis laoreet diam, vel eleifend arcu venenatis vel. Curabitur et consequat nulla. Sed eu arcu leo. Proin tincidunt sed massa hendrerit venenatis.''';
