class Employee {
  String employeeName;
  String designation;
  double monthlySalary;

  Employee(this.employeeName, this.designation, this.monthlySalary);

  void displayEmployee() {
    print("Name: $employeeName | Role: $designation | Salary: \$$monthlySalary");
  }
}

void main() {
  List<Employee> employeeList = [
    Employee("Tanvir Ahmed", "Frontend Engineer", 45000),
    Employee("Rishan Hossain", "Backend Developer", 55000),
    Employee("Sweety Begum", "QA Analyst", 40000),
  ];

  print("--- Company Directory ---");
  for (Employee member in employeeList) {
    member.displayEmployee();
  }
}
