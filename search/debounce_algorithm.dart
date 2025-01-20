import 'dart:async';

/// A debouncer that delays the execution of a function until a specified
/// duration has passed since the last time it was called.
class Debouncer {
  final Duration delay;
  Timer? _timer;

  Debouncer({required this.delay});

  /// Calls the given [callback] after the specified [delay] has passed.
  /// If the debouncer is called again before the delay has passed, the previous
  /// call is canceled, and the timer is reset.
  void call(void Function() callback) {
    _timer?.cancel(); // Cancel the previous timer if it exists
    _timer = Timer(delay, callback); // Start a new timer
  }

  /// Cancels any pending debounced function call.
  void cancel() {
    _timer?.cancel();
  }
}

void main() {
  // Create a debouncer with a delay of 500 milliseconds
  final debouncer = Debouncer(delay: Duration(milliseconds: 500));

  // Simulate a user typing in a search field
  for (int i = 1; i <= 5; i++) {
    debouncer(() {
      print("Searching... (Call $i)");
    });
  }

  // Wait for the debounce delay to pass
  Future.delayed(Duration(seconds: 1), () {
    debouncer(() {
      print("This is the final call after the user stops typing.");
    });
  });
}