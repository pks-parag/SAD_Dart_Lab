class Document {
  String docTitle;

  Document(this.docTitle);
}

mixin Printable on Document {
  void display() {
    print("Printing Document: '$docTitle'");
  }
}

class Invoice extends Document with Printable {
  double billedAmount;

  Invoice(String docTitle, this.billedAmount) : super(docTitle);
}

class Report extends Document with Printable {
  String authorName;

  Report(String docTitle, this.authorName) : super(docTitle);
}

void main() {
  Invoice clientBill = Invoice("Electricity Bill #892", 140.50);
  Report monthlyReport = Report("Q3 Lab Progress", "CSE Faculty");

  clientBill.display();
  monthlyReport.display();
}
