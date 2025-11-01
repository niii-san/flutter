

void main() {
  // 1. data representation
  int first;
  int second;
  int third;
  int fourth;
  int result;

  first = 4;
  second = 6;
  third = 7;
  fourth = 10;

  result = add(first, second);
  print("Sum of $first and $second is : $result");

  result = add(first, second, third, fourth);
  print("Sum of $first, $second, $third and $fourth is $result");

  result = add2(first: 20, second: 2);

}

int add(int first, int second, [int third = 0, int fourth = 0]) {
  return first + second + third + fourth;
}

int add2({
  required int first,
  required int second,
  int? third,
  int? fourth = 0,
}) {
  return first + second + (third ?? 0) + (fourth ?? 0);
}


