
# Dart Algorithms Library  
A collection of common algorithms implemented in Dart, with time complexity analysis.

## 📦 Categories  

### 1. Sorting Algorithms (`/sort`)  
| Algorithm         | Code | Time Complexity | Explanation |
|-------------------|------|-----------------|-------------|
| **Selection Sort** | [select_sort.dart](https://github.com/MAHMOUDELSAYED7/Algorithms/blob/main/sort/select_sort.dart) | **O(n²)** | Always performs O(n²) comparisons due to nested loops. |
| **Bubble Sort** | [bubble_sort.dart](https://github.com/MAHMOUDELSAYED7/Algorithms/blob/main/sort/bubble_sort.dart) | **O(n²)** (Worst/Avg)<br>**O(n)** (Best) | Worst case: reverse-ordered input. Best case: already sorted (early termination). |
| **Heap Sort** | [heap_sort.dart](https://github.com/MAHMOUDELSAYED7/Algorithms/blob/main/sort/heap_sort.dart) | **O(n log n)** | Build heap (O(n)) + extract-max (O(log n) per element). |
| **Insertion Sort** | [insert_sort.dart](https://github.com/MAHMOUDELSAYED7/Algorithms/blob/main/sort/insert_sort.dart) | **O(n²)** (Worst/Avg)<br>**O(n)** (Best) | Efficient for small/partially sorted data. |
| **Merge Sort** | [merge_sort.dart](https://github.com/MAHMOUDELSAYED7/Algorithms/blob/main/sort/merge_sort.dart) | **O(n log n)** | Divide-and-conquer with stable O(n) space. |
| **Quick Sort** | [quick_sort.dart](https://github.com/MAHMOUDELSAYED7/Algorithms/blob/main/sort/quick_sort.dart) | **O(n²)** (Worst)<br>**O(n log n)** (Avg) | Worst case: poor pivot choice (e.g., already sorted). |

---

### 2. Searching Algorithms (`/search`)  
| Algorithm         | Code | Time Complexity | Explanation |
|-------------------|------|-----------------|-------------|
| **Binary Search** | [binary_search.dart](https://github.com/MAHMOUDELSAYED7/Algorithms/blob/main/search/binary_search.dart) | **O(log n)** | Requires sorted input. Halves search space each step. |
| **Linear Search** | [linear_search.dart](https://github.com/MAHMOUDELSAYED7/Algorithms/blob/main/search/linear_search.dart) | **O(n)** | Scans every element in worst case. |
| **Jump Search** | [jump_search.dart](https://github.com/MAHMOUDELSAYED7/Algorithms/blob/main/search/jump_search.dart) | **O(√n)** | Optimal block size = √n. Better than linear but worse than binary. |
| **Interpolation Search** | [interpolation_search.dart](https://github.com/MAHMOUDELSAYED7/Algorithms/blob/main/search/interpolation_search.dart) | **O(log log n)** (Avg)<br>**O(n)** (Worst) | Works best for uniformly distributed sorted data. |
| **Exponential Search** | [exponential_search.dart](https://github.com/MAHMOUDELSAYED7/Algorithms/blob/main/search/exponential_search.dart) | **O(log n)** | Combines binary search with range doubling. |
| **Fibonacci Search** | [fibonacci_search.dart](https://github.com/MAHMOUDELSAYED7/Algorithms/blob/main/search/fibonacci_search.dart) | **O(log n)** | Divides array using Fibonacci numbers. |
| **Debounce Algorithm** | [debounce_algorithm.dart](https://github.com/MAHMOUDELSAYED7/Algorithms/blob/main/search/debounce_algorithm.dart) | **O(1)** per call | Delays execution until a pause in events. |

---

### 3. Graph Algorithms (`/graph`)  
| Algorithm         | Code | Time Complexity | Explanation |
|-------------------|------|-----------------|-------------|
| **Breadth-First Search (BFS)** | [breadth_first_search.dart](https://github.com/MAHMOUDELSAYED7/Algorithms/blob/main/graph/breadth_first_search.dart) | **O(V + E)** | Visits all neighbors level-by-level (V = vertices, E = edges). |
| **Depth-First Search (DFS)** | [depth_first_search.dart](https://github.com/MAHMOUDELSAYED7/Algorithms/blob/main/graph/depth_first_search.dart) | **O(V + E)** | Explores as far as possible along each branch. |
| **Nearest Neighbor** | [nearest_neighbour_algorithm.dart](https://github.com/MAHMOUDELSAYED7/Algorithms/blob/main/graph/nearest_neighbour_algorithm.dart) | **O(n²)** | Heuristic for TSP (Traveling Salesman Problem). |

---

## 🚀 Usage  
1. Clone the repository:
```bash
git clone https://github.com/MAHMOUDELSAYED7/Algorithms.git
```
2. Import the desired algorithm file:
```dart
import 'sort/merge_sort.dart'; // Example import
```

## Contact

For any questions or feedback, please reach out via email: [mahmoudelsayed.dev@gmail.com](mahmoudelsayed.dev@gmail.com)
