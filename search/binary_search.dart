int binarySearch(List<int> list, int left, int right, int target) {
  if (right >= left) {
    int middle = left + ((right - left) ~/ 2); // Avoids overflow

    // If the element is present at the middle
    if (list[middle] == target) {
      return middle;
    }

    // If the element is smaller than the middle, search the left sublist
    if (list[middle] > target) {
      return binarySearch(list, left, middle - 1, target);
    }

    // Otherwise, search the right sublist
    return binarySearch(list, middle + 1, right, target);
  }

  // Element is not present in the list
  return -1;
}

void main() {
  List<int> list = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  int target = 55;

  print('List: $list');

  int index = binarySearch(list, 0, list.length - 1, target);

  if (index != -1) {
    print('$target found at index: $index');
  } else {
    print('$target not found in the list.');
  }
}
