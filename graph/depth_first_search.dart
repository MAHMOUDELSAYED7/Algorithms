import 'dart:collection';

class Graph {
  /// Adjacency List representation using dynamic list and HashMap
  HashMap<int, List<int>> graph = HashMap<int, List<int>>();
  List<int> nodes;

  Graph(this.nodes) {
    _makeGraph();
  }

  /// Initializes all nodes with empty lists.
  /// Each node will have a list as value which stores
  /// the nodes to which it is connected.
  void _makeGraph() {
    for (int node in nodes) {
      graph[node] = [];
    }
  }

  int get numberOfNodesInGraph => nodes.length;

  HashMap<int, List<int>> get graphDataStructure => graph;

  void addNode(int newNode) {
    nodes.add(newNode);
    graph[newNode] = [];
  }

  void addEdge(int start, int end) {
    graph[start]?.add(end);
  }
}

/// Helper function for Depth First Search
void _depthFirstSearchHelper(
  HashMap<int, List<int>> graph,
  List<bool> visitedNodes,
  int node,
  List<int> answer,
) {
  if (visitedNodes[node]) return;

  visitedNodes[node] = true;
  answer.add(node);

  for (int child in graph[node] ?? []) {
    if (!visitedNodes[child]) {
      _depthFirstSearchHelper(graph, visitedNodes, child, answer);
    }
  }
}

/// Performs Depth First Search on the graph starting from the given node.
List<int> depthFirstSearch(Graph graph, int startNode) {
  if (graph.numberOfNodesInGraph == 0) {
    return []; // Return an empty list if the graph has no nodes.
  }

  List<bool> visitedNodes =
      List<bool>.filled(graph.numberOfNodesInGraph, false);
  List<int> answer = [];
  _depthFirstSearchHelper(
      graph.graphDataStructure, visitedNodes, startNode, answer);
  return answer;
}

void main() {
  // Run all test cases
  testCase1();
  testCase2();
  testCase3();
  testCase4();
  testCase5();
  testCase6();
}

// Test Case 1: Simple Linear Graph
void testCase1() {
  List<int> nodes = [0, 1, 2, 3];
  Graph graph = Graph(nodes);
  graph.addEdge(0, 1);
  graph.addEdge(1, 2);
  graph.addEdge(0, 3);

  List<int> result = depthFirstSearch(graph, 0);
  print("Test Case 1: $result"); // Expected Output: [0, 1, 2, 3]
}

// Test Case 2: Graph with Multiple Branches
void testCase2() {
  List<int> nodes = [0, 1, 2, 3, 4];
  Graph graph = Graph(nodes);
  graph.addEdge(0, 1);
  graph.addEdge(0, 2);
  graph.addEdge(0, 3);
  graph.addEdge(2, 4);

  List<int> result = depthFirstSearch(graph, 0);
  print("Test Case 2: $result"); // Expected Output: [0, 1, 2, 4, 3]
}

// Test Case 3: Disconnected Graph
void testCase3() {
  List<int> nodes = [0, 1, 2, 3];
  Graph graph = Graph(nodes);
  graph.addEdge(0, 1);
  graph.addEdge(2, 3);

  List<int> result = depthFirstSearch(graph, 0);
  print("Test Case 3: $result"); // Expected Output: [0, 1]
}

// Test Case 4: Graph with a Cycle
void testCase4() {
  List<int> nodes = [0, 1, 2, 3];
  Graph graph = Graph(nodes);
  graph.addEdge(0, 1);
  graph.addEdge(1, 2);
  graph.addEdge(2, 0); // Creates a cycle
  graph.addEdge(2, 3);

  List<int> result = depthFirstSearch(graph, 0);
  print("Test Case 4: $result"); // Expected Output: [0, 1, 2, 3]
}

// Test Case 5: Single Node Graph
void testCase5() {
  List<int> nodes = [0];
  Graph graph = Graph(nodes);

  List<int> result = depthFirstSearch(graph, 0);
  print("Test Case 5: $result"); // Expected Output: [0]
}

// Test Case 6: Empty Graph
void testCase6() {
  List<int> nodes = [];
  Graph graph = Graph(nodes);

  List<int> result = depthFirstSearch(graph, 0);
  print("Test Case 6: $result"); // Expected Output: []
}
