int linearSearch(List<int> list, int target) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == target) {
      return i; // Return the index if the target is found
    }
  }
  return -1; // Return -1 if the target is not found
}

void main() {
  List<int> list = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  int target = 15;

  print('List: $list');
  int index = linearSearch(list, target);

  if (index != -1) {
    print('$target found at index: $index');
  } else {
    print('$target not found in the list.');
  }
}
