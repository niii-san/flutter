void main() {

  printSum(limit: 100);
}

void printSum({required int limit}) {
  int sum = 0;
  for (int i = 1; i <= limit; i++) {
    if (i % 2 == 0) {
      sum += i;
    }
  }
  print("The sum of even numbers from 1 to $limit is $sum");
}
