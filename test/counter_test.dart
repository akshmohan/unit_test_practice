import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/counter.dart';

void main() {

  //Given When Then
  group('Counter Class', () {

    late Counter counter;

    setUp(() {
        counter = Counter();
    });

    
    test('When Counter class is instantiated the value of count should be zero',
        () {
   

      //Act aka When
      final val = counter.count;

      //Assert aka Then
      expect(val, 0);
    });

    test(
      "When Counter class is incremented the value of count should be 1",
      () {

        //Act aka When
        counter.increment();
        final val = counter.count;

        //Assert aka Then
        expect(val, 1);
      },
    );


    test("When Counter class is decremented the value of count should be -1", () {
      counter.decrement();
      final val = counter.count;

      expect(val, -1);
    });

    test("When Counter class is reset the value of count should be 0", () {
      counter.reset();
      final val = counter.count;

      expect(val, 0);
    });
  });
}
