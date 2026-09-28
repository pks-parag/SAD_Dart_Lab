import 'dart:io';

class Question {
  String questionText;
  List<String> options;
  int correctOptionIndex;

  Question(this.questionText, this.options, this.correctOptionIndex);
}

class Quiz {
  List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void start() {
    for (int i = 0; i < questions.length; i++) {
      var q = questions[i];
      print("\nQ\${i + 1}: \${q.questionText}");
      for (int j = 0; j < q.options.length; j++) {
        print("  \${j + 1}. \${q.options[j]}");
      }
      stdout.write("Enter your choice (1-\${q.options.length}): ");
      int? ans = int.tryParse(stdin.readLineSync() ?? '');
      if (ans != null && (ans - 1) == q.correctOptionIndex) {
        print("Correct!");
        score++;
      } else {
        print("Wrong! Correct was option \${q.correctOptionIndex + 1}");
      }
    }
    print("\n=== Quiz Completed ===");
    print("Your Total Score: \$score / \${questions.length}");
  }
}

void main() {
  List<Question> questionList = [
    Question("What is the extension of Dart file?", [".dt", ".dart", ".flutter", ".d"], 1),
    Question("Which keyword is used for constants evaluated at compile-time?", ["final", "const", "static", "var"], 1),
    Question("Is Dart single-threaded by default?", ["Yes", "No"], 0),
  ];

  Quiz quiz = Quiz(questionList);
  quiz.start();
}
