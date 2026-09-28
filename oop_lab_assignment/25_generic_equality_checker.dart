bool isEqual<T>(T firstItem, T secondItem) {
  return firstItem == secondItem;
}

void main() {
  print("Are strings equal? ${isEqual<String>('apple', 'apple')}");
  print("Are numbers equal? ${isEqual<int>(10, 20)}");
  print("Are booleans equal? ${isEqual<bool>(true, true)}");
}
