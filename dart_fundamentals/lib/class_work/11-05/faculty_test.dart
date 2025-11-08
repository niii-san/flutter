import 'dart:ffi';

// import 'package:dart_fundamentals/class_work/11-05/faculty.dart';
import 'package:dart_fundamentals/class_work/11-05/fulltime_faculty.dart';
import 'package:dart_fundamentals/class_work/11-05/parttime_faculty.dart';

void main() {
  // Faculty fac1 = Faculty(
  //   firstName: "Nishan",
  //   lastName: "Bista",
  //   department: "C/S",
  // );
  // fac1.displayFullName();
  // print(fac1.calculateAnnualSalary());

  // Faculty fac2 = Faculty(
  //   firstName: "Lala",
  //   lastName: "Ji",
  //   department: "Administrative",
  // );
  // fac2.displayFullName();
  // print(fac2.calculateAnnualSalary());

  FulltimeFaculty full = FulltimeFaculty(
    firstName: "Nishan",
    lastName: "Bista",
    department: "C/S",
    salary: 3000000,
  );
  full.displayAllDetails();

  PartTimeFaculty part = PartTimeFaculty(
    firstName: "Lala",
    lastName: "ji",
    department: "Account",
    hourlyRate: 500,
    hoursWorked: 50,
  );
  part.displayAllDetails();
}
