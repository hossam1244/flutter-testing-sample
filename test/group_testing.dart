import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_sample/counter.dart';

main() {
  group('Counter', () {
    final counter = Counter();

    test('value should start at 0', () {
      expect(counter.value, 0);
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