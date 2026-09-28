class Box<T> {
  T storedItem;

  Box(this.storedItem);

  T unboxItem() {
    return storedItem;
  }

  void replaceItem(T newItem) {
    storedItem = newItem;
  }
}

void main() {
  Box<String> textContainer = Box<String>("Dart Assignment");
  print("Stored text: ${textContainer.unboxItem()}");

  Box<int> numberContainer = Box<int>(2026);
  print("Stored number: ${numberContainer.unboxItem()}");
}
