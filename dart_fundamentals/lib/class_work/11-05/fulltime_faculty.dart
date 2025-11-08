import 'package:dart_fundamentals/class_work/11-05/faculty.dart';

class FulltimeFaculty extends Faculty {
  final double salary;

  FulltimeFaculty({
    required super.firstName,
    required super.lastName,
    required super.department,
    required this.salary,
  });

  @override
  double calculateAnnualSalary() {
    return 12 * salary;
  }
}
