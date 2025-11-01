import 'dart:math';

void main() {
  double radius = 23.2;
  double areaResult = areaOfCircle(radius: radius);

  print("Area of circle with radius: $radius is $areaResult");
}

double areaOfCircle({required double radius, double pi = 3.14}) {
  double area = pi * pow(radius, 2);
  return area;
}
