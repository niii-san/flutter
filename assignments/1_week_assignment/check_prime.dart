void main() {
  int num = 7;
  bool result = isPrime(targetNum: num);
  print(result);
  print(
    result
        ? "The number $num is a prime number"
        : "The number is not a prime number",
  );
}

bool isPrime({required int targetNum}) {
  for (int i = 2; i < targetNum; i++) {
    if (targetNum % i == 0) {
      return false;
    }
  }

  return true;
}
