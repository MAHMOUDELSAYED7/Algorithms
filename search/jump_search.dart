import 'dart:math';

int jumpSearch(List<int> list, int target) {
  int n = list.length;
  int step = sqrt(n).toInt(); // Block size

  int prev = 0;

  // Jump to the block where the target might be
  while (list[min(step, n) - 1] < target) {
    prev = step;
    step += sqrt(n).toInt();
    if (prev >= n) {
      return -1; // Target not found
    }
  }

  // Perform linear search within the block
  while (list[prev] < target) {
    prev++;
    if (prev == min(step, n)) {
      return -1; // Target not found
    }
  }

  if (list[prev] == target) {
    return prev; // Target found at index `prev`
  }

  return -1; // Target not found
}

void main() {
  List<int> list = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144];
  int target = 55;

  int result = jumpSearch(list, target);

  if (result != -1) {
    print("Element found at index: $result, value: ${list[result]}");
  } else {
    print("Element not found");
  }
}
