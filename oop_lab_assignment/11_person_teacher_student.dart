class Person {
  String fullName;
  int userAge;

  Person(this.fullName, this.userAge);

  void displayInfo() {
    print("Person: $fullName, Age: $userAge");
  }
}

class Teacher extends Person {
  String assignedSubject;

  Teacher(String fullName, int userAge, this.assignedSubject)
      : super(fullName, userAge);

  @override
  void displayInfo() {
    print("Teacher: $fullName | Age: $userAge | Subject: $assignedSubject");
  }
}

class Student extends Person {
  String studentBatch;

  Student(String fullName, int userAge, this.studentBatch)
      : super(fullName, userAge);

  @override
  void displayInfo() {
    print("Student: $fullName | Age: $userAge | Batch: $studentBatch");
  }
}

void main() {
  Teacher lecturer = Teacher("Dr. Mahbub", 42, "Computer Networks");
  Student learner = Student("Tahmid", 20, "Batch 56");

  lecturer.displayInfo();
  learner.displayInfo();
}
