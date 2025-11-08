import 'package:dart_fundamentals/class_work/11-05/encapsulation.dart';

void main() {
  Arithmetic arithmetic1 = Arithmetic(20, 10);
  print(
    "The sum of ${arithmetic1.getFirst()}  ${arithmetic1.getSecond()} is : ${arithmetic1.add()}",
  );

  arithmetic1.setfirst(34);
  arithmetic1.setSecond(35);
  print(
    "The sum of ${arithmetic1.getFirst()} and ${arithmetic1.getSecond()} is : ${arithmetic1.add()}",
  );
}
