// Abstraction
abstract class Recordable {
  void printAcademicSummary();
}

// Inheritance base class
class Person {
  int nationalId;
  String legalName;

  Person(this.nationalId, this.legalName);
}

// Encapsulation and Inheritance
class Student extends Person implements Recordable {
  int studentRollNumber;
  double _cumulativeGpa; // Private field (Encapsulation)

  Student(int nationalId, String legalName, this.studentRollNumber, this._cumulativeGpa)
      : super(nationalId, legalName);

  // Getter and Setter
  double get studentGpa => _cumulativeGpa;

  set studentGpa(double score) {
    if (score >= 0.0 && score <= 4.0) {
      _cumulativeGpa = score;
    } else {
      print("Invalid GPA range!");
    }
  }

  // Polymorphism
  @override
  void printAcademicSummary() {
    print("Student Summary -> Roll: $studentRollNumber | Name: $legalName | GPA: $_cumulativeGpa");
  }
}

class Course {
  String courseCode;
  String courseTitle;
  int creditPoints;

  Course(this.courseCode, this.courseTitle, this.creditPoints);
}

class Enrollment {
  Student registeredStudent;
  Course selectedCourse;
  DateTime registrationDate;

  Enrollment(this.registeredStudent, this.selectedCourse, this.registrationDate);

  void displayEnrollmentDetails() {
    print("Enrollment Slip:");
    print("Student: ${registeredStudent.legalName} (Roll: ${registeredStudent.studentRollNumber})");
    print("Enrolled in: ${selectedCourse.courseTitle} [${selectedCourse.courseCode}] (${selectedCourse.creditPoints} Credits)");
    print("Registered on: ${registrationDate.toLocal().toString().split(' ')[0]}\n");
  }
}

void main() {
  Student cseStudent = Student(1001, "Parag Kishor Shornob", 221001, 3.82);
  Course dartOop = Course("CSE-311", "Object-Oriented Programming with Dart", 3);

  Enrollment currentSemester = Enrollment(cseStudent, dartOop, DateTime.now());

  cseStudent.printAcademicSummary();
  print("");
  currentSemester.displayEnrollmentDetails();
}
