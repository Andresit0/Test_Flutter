import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_example/test_1to3.dart';

void main() {
  //GROUP TEST
  //If you have several tests that are related to one another, combine them
  //using the group function provided by the test package.
  group('Counter', () {
    final counter = UnitTestIndivFrom1To3();
    test('value should start at 0', () {
      expect(UnitTestIndivFrom1To3().value, 0);
    });

    test('value should be incremented', () {
      counter.increment();
      expect(counter.value, 1);
    });

    test('value should be decremented', () {
      counter.decrement();
      expect(counter.value, 0);
    });
  });
}
