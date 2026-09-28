class Person {
  String personName;
  String cityAddress;

  Person(this.personName, this.cityAddress);
}

class Employee extends Person {
  double currentSalary;

  Employee(String personName, String cityAddress, this.currentSalary)
      : super(personName, cityAddress);

  void showSummary() {
    print("Employee: $personName | City: $cityAddress | Salary: \$$currentSalary");
  }
}

void main() {
  Employee staffMember = Employee("Farhan Kabir", "Sylhet", 65000);
  staffMember.showSummary();
}
