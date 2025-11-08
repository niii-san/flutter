import 'package:dart_fundamentals/class_work/11-05/faculty.dart';

class PartTimeFaculty extends Faculty {
  final double hourlyRate;
  final int hoursWorked;

  PartTimeFaculty({
    required super.firstName,
    required super.lastName,
    required super.department,
    required this.hourlyRate,
    required this.hoursWorked,
  });

  @override
  double calculateAnnualSalary() {
    return hourlyRate * hoursWorked;
  }
}
