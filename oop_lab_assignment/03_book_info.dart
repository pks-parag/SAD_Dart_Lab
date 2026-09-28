class Book {
  String bookTitle;
  String bookSubtitle;
  String bookAuthor;

  Book(this.bookTitle, this.bookSubtitle, this.bookAuthor);

  void displayBookDetails() {
    print("Title: $bookTitle");
    print("Subtitle: $bookSubtitle");
    print("Author: $bookAuthor");
  }
}

void main() {
  Book favoriteBook = Book(
    "Clean Code",
    "A Handbook of Agile Software Craftsmanship",
    "Robert C. Martin",
  );
  favoriteBook.displayBookDetails();
}
