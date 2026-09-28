class Company {
  String companyName;

  Company(this.companyName);
}

class Manager extends Company {
  String managerName;
  double baseMonthlySalary;
  double performanceBonus;

  Manager(
    String companyName,
    this.managerName,
    this.baseMonthlySalary,
    this.performanceBonus,
  ) : super(companyName);

  double calculateSalary() {
    return baseMonthlySalary + performanceBonus;
  }
}

class Developer extends Company {
  String developerName;
  int completedHours;
  double hourlyRate;

  Developer(
    String companyName,
    this.developerName,
    this.completedHours,
    this.hourlyRate,
  ) : super(companyName);

  double calculateSalary() {
    return completedHours * hourlyRate;
  }
}

void main() {
  Manager projectLead = Manager("TechSolutions", "Tanima", 60000, 15000);
  Developer mobileEngineer = Developer("TechSolutions", "Rohan", 160, 350);

  print("${projectLead.managerName} Total Monthly Salary: \$${projectLead.calculateSalary()}");
  print("${mobileEngineer.developerName} Total Monthly Salary: \$${mobileEngineer.calculateSalary()}");
}
