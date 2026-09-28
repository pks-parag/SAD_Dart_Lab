class Book {
  int bookId;
  String bookTitle;
  String authorName;
  bool isAvailable;

  Book(this.bookId, this.bookTitle, this.authorName, {this.isAvailable = true});
}

class Member {
  int memberId;
  String memberName;
  List<Book> borrowedBooks = [];

  Member(this.memberId, this.memberName);
}

class Library {
  String libraryBranch;
  List<Book> inventoryBooks = [];

  Library(this.libraryBranch);

  void addNewBook(Book newBook) {
    inventoryBooks.add(newBook);
    print("Added to library: '${newBook.bookTitle}'");
  }

  void issueBook(int bookId, Member borrowingMember) {
    for (Book book in inventoryBooks) {
      if (book.bookId == bookId) {
        if (book.isAvailable) {
          book.isAvailable = false;
          borrowingMember.borrowedBooks.add(book);
          print("Success: '${book.bookTitle}' issued to ${borrowingMember.memberName}.");
          return;
        } else {
          print("Unavailable: '${book.bookTitle}' is currently checked out.");
          return;
        }
      }
    }
    print("Book with ID $bookId not found.");
  }

  void returnBook(int bookId, Member returningMember) {
    for (Book book in returningMember.borrowedBooks) {
      if (book.bookId == bookId) {
        book.isAvailable = true;
        returningMember.borrowedBooks.remove(book);
        print("Success: '${book.bookTitle}' returned by ${returningMember.memberName}.");
        return;
      }
    }
    print("Record not found in member's borrowed list.");
  }
}

void main() {
  Library cityLibrary = Library("Sylhet Central Branch");
  Book b1 = Book(1, "The Pragmatic Programmer", "Andy Hunt");
  Book b2 = Book(2, "Introduction to Algorithms", "CLRS");

  cityLibrary.addNewBook(b1);
  cityLibrary.addNewBook(b2);

  Member studentMember = Member(701, "Habib Rujon");
  cityLibrary.issueBook(1, studentMember);
  cityLibrary.issueBook(1, studentMember); // attempt duplicate issue
  cityLibrary.returnBook(1, studentMember);
}
