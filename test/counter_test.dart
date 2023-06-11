import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_sample/counter.dart';

void main() {
  test('Counter value should be incremented', () {
    final counter = Counter();

    counter.increment();

    expect(counter.value, 1);
  });


  test("Counter" , () {
    assert(1 == 1);
  });

}


