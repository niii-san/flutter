void main() {
  int input = 2;
  printMultiplication(multiplicationOf: input);
}

void printMultiplication({required int multiplicationOf}) {
  print("TABLE OF $multiplicationOf");

  for (int i = 1; i <= 10; i++) {
    int result = multiplicationOf * i;
    print("$multiplicationOf x $i = $result");
  }
}
