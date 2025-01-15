int interpolationSearch(List<int> arr, int key) {
  int low = 0;
  int high = arr.length - 1;

  while (low <= high && key >= arr[low] && key <= arr[high]) {
    // Calculate the nearest possible position of the key
    int pos =
        low + (((key - arr[low]) * (high - low)) ~/ (arr[high] - arr[low]));

    if (key > arr[pos]) {
      low = pos + 1; // Search the right part of the array
    } else if (key < arr[pos]) {
      high = pos - 1; // Search the left part of the array
    } else {
      return pos; // Key found
    }
  }

  return -1; // Key not found
}

void main() {
  List<int> arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  int key = 5;

  print("Searching for $key in: $arr");

  int index = interpolationSearch(arr, key);

  if (index != -1) {
    print("Element found at index: $index");
  } else {
    print("Element not found.");
  }
}
