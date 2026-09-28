/*
Q1: Explain what is asynchronous programming in dart?

Answer:
Asynchronous programming in Dart allows time-consuming tasks (such as network
calls, database queries, reading large files, or timers) to execute in the background
without blocking the main thread (UI thread). Dart uses an event loop with 'Future',
'Stream', and the 'async'/'await' keywords to handle asynchronous tasks cleanly.
*/

void main() {
  print("Asynchronous programming allows non-blocking operations in Dart.");
}
