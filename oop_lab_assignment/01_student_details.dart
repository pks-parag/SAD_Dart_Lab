class Student {
  String studentName;
  int studentId;
  double studentCgpa;

  Student(this.studentName, this.studentId, this.studentCgpa);

  void displayInfo() {
    print("Student ID: $studentId");
    print("Name: $studentName");
    print("CGPA: $studentCgpa");
  }
}

void main() {
  Student firstStudent = Student("Parag Kishor Shornob", 101, 3.85);
  firstStudent.displayInfo();
}
