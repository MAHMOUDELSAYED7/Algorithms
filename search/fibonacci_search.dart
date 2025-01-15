int fibonacciSearch(List<int> arr, int x, int n) {
  // Initialize Fibonacci numbers
  int fibMMm2 = 0; // (m - 2)'th Fibonacci number
  int fibMMm1 = 1; // (m - 1)'th Fibonacci number
  int fibM = fibMMm2 + fibMMm1; // m'th Fibonacci number

  // Find the smallest Fibonacci number greater than or equal to n
  while (fibM < n) {
    fibMMm2 = fibMMm1;
    fibMMm1 = fibM;
    fibM = fibMMm2 + fibMMm1;
  }

  int offset = -1; // Marks the eliminated range from the front

  while (fibM > 1) {
    // Check if fibMMm2 is a valid location
    int i = ((offset + fibMMm2) < (n - 1)) ? (offset + fibMMm2) : (n - 1);

    if (arr[i] < x) {
      // Move the Fibonacci numbers down
      fibM = fibMMm1;
      fibMMm1 = fibMMm2;
      fibMMm2 = fibM - fibMMm1;
      offset = i;
    } else if (arr[i] > x) {
      // Move the Fibonacci numbers down
      fibM = fibMMm2;
      fibMMm1 = fibMMm1 - fibMMm2;
      fibMMm2 = fibM - fibMMm1;
    } else {
      // Element found, return index
      return i;
    }
  }

  // Compare the last element with x
  if (offset + 1 < n && arr[offset + 1] == x) {
    return offset + 1;
  }

  // Element not found
  return -1;
}

void main() {
  // Input array
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Print the array
  print("Array: $arr");

  // Size of the array
  int n = arr.length;

  // Key to be searched in the array
  int key = 7;

  // Perform Fibonacci search
  int result = fibonacciSearch(arr, key, n);

  // Print the result
  if (result != -1) {
    print("Index of $key is $result");
  } else {
    print("$key not found in the array");
  }
}
