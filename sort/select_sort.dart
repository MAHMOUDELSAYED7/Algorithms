import 'dart:math' show Random;

// Selection sort algorithm
void selectionSort(List<int> list) {
  for (int i = 0; i < list.length - 1; i++) {
    // Assume the current index is the minimum
    int minIndex = i;

    // Find the index of the minimum element in the unsorted portion
    for (int j = i + 1; j < list.length; j++) {
      if (list[j] < list[minIndex]) {
        minIndex = j;
      }
    }

    // Swap the found minimum element with the element at index i
    if (i != minIndex) {
      _swap(list, i, minIndex);
    }
  }
}

// Helper function to swap two elements in a list
void _swap(List<int> list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}

void main() {
  // Initialize random number generator and list parameters
  final int seed = 100;
  final Random rnd = Random();
  final int length = 100;

  // Generate a list of random integers
  List<int> list =
      List<int>.generate(length, (i) => rnd.nextInt(seed), growable: false);

  print('Before sorting:');
  print(list);
  print('--------------------------------------');

  // Sort the list using selection sort
  selectionSort(list);

  print('After sorting:');
  print(list);
}
