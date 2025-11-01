void main() {
  double result = calculateSimpleInterest(
    principal: 2000000,
    time: 2,
    rate: 12.5,
  );
  print("The Simple Interest is: $result");
}

double calculateSimpleInterest({
  required double principal,
  required double time,
  required double rate,
}) {
  double simpleInterest = (principal * time * rate) / 100;
  return simpleInterest;
}
