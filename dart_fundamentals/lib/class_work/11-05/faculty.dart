class Faculty {
  final String firstName;
  final String lastName;
  final String department;

  Faculty({
    required this.firstName,
    required this.lastName,
    required this.department,
  });

  void displayFullName() {
    print("First name: $firstName \nLast name: $lastName");
  }

  void displayAllDetails() {
    print("First name: $firstName");
    print("Last name: $lastName");
    print("Department: $department");
  }

  double calculateAnnualSalary() {
    return 0;
  }
}
