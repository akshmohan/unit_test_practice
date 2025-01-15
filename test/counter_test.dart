import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/counter.dart';

void main() {

   group('Counter Class', () {
        //Given When Then
  test('When Counter class is instantiated the value of count should be zero',
      () {
    //Arrange aka Given
    final counter = Counter();

    //Act aka When
    final val = counter.count;

    //Assert aka Then
    expect(val, 0);
  });
  
  test(
    "When Counter class is incremented the value of count should be 1",
    () {
      //Arrange aka Given
      final counter = Counter();

      //Act aka When
      counter.increment();
      final val = counter.count;

      //Assert aka Then
      expect(val, 1);
    },
  );

   });


}
