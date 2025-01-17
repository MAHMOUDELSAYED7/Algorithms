import 'dart:collection';

class Graph {
  /// Adjacency List representation using dynamic list and HashMap
  HashMap graph = new HashMap<int, List<dynamic>>();
  List<int> nodes;

  void makeGraph() {
    /// initialise all nodes with empty lists.
    /// each node will have a list as value which stores
    /// the nodes to which it is connected to
    for (int i = 0; i < this.nodes.length; i++) {
      this.graph[nodes[i]] = [];
    }
  }

  Graph(this.nodes) {
    this.makeGraph();
  }

  int get numberOfNodesInGraph {
    return this.nodes.length;
  }

  HashMap get graphDataStructure {
    return this.graph;
  }

  void addNodes(int newNode) {
    this.nodes.add(newNode);
    this.graph[newNode] = [];
  }

  void addEdges(int start, int end) {
    this.graph[start].add(end);
  }
}

List<int> breadthFirstSearch(Graph graph, int numberOfNodes, int startNode) {
  Queue queue = new Queue<int>();
  List<int> answer = [];
  queue.add(startNode);
  while (queue.isNotEmpty) {
    int node = queue.removeFirst();
    answer.add(node);
    for (int child in graph.graph[node]) {
      queue.add(child);
    }
  }
  return answer;
}

void main() {
  // You can add your own manual tests or usage examples here if needed.
  // For example:
  List<int> nodes = [0, 1, 2, 3, 4];
  Graph graph = Graph(nodes);
  graph.addEdges(0, 1);
  graph.addEdges(0, 2);
  graph.addEdges(0, 3);
  graph.addEdges(2, 4);

  List<int> result = breadthFirstSearch(graph, graph.numberOfNodesInGraph, 0);
  print(result); // Output: [0, 1, 2, 3, 4]
}