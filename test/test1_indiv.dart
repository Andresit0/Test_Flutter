import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_example/test_1to3.dart';

void main() {
  //INDIVIDUAL TEST
  test('Counter value should be incremented', () {
    final counter = UnitTestIndivFrom1To3();
    counter.increment();
    expect(counter.value, 1);
  });
}

/*
FROM TERMINAL:
  flutter test test/test1_indiv.dart    
  flutter test --help
*/