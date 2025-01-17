import 'dart:math';

int exponentialSearch(List<int> list, int target) {
  int n = list.length;

  // If the target is at the first index
  if (list[0] == target) {
    return 0;
  }

  // Find the range for binary search
  int i = 1;
  while (i < n && list[i] <= target) {
    i *= 2; // Double the range
  }

  // Perform binary search within the found range
  return binarySearch(list, target, i ~/ 2, min(i, n - 1));
}

int binarySearch(List<int> list, int target, int low, int high) {
  while (low <= high) {
    int mid = low + (high - low) ~/ 2;

    if (list[mid] == target) {
      return mid; // Target found at index `mid`
    } else if (list[mid] < target) {
      low = mid + 1; // Search in the right half
    } else {
      high = mid - 1; // Search in the left half
    }
  }

  return -1; // Target not found
}

void main() {
  List<int> list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int target = 6;

  int result = exponentialSearch(list, target);

  if (result != -1) {
    print("Element found at index: $result, value: ${list[result]}");
  } else {
    print("Element not found");
  }
}
