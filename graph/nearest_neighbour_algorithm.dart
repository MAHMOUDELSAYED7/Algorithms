import 'dart:math';

/// Represents a graph using an adjacency matrix.
/// [nodes] - List of node names in order.
/// [adjacencyMatrix] - 2D list representing edge weights (distances between nodes).
class Graph {
  final List<String> nodes;
  final List<List<double>> adjacencyMatrix;

  Graph(this.nodes, this.adjacencyMatrix);
}

/// Finds a path visiting all nodes in the given [graph] using a greedy nearest neighbor approach.
List<String> nearestNeighborSearch(Graph graph) {
  final List<String> path = [];
  final Set<int> unvisitedNodes = Set<int>.from(Iterable.generate(graph.nodes.length));

  int currentNode = 0;
  while (unvisitedNodes.isNotEmpty) {
    unvisitedNodes.remove(currentNode);
    int? nearestNeighbor;
    double nearestNeighborDistance = double.infinity;

    for (final neighbor in unvisitedNodes) {
      final neighborDistance = graph.adjacencyMatrix[currentNode][neighbor];
      if (neighborDistance < nearestNeighborDistance) {
        nearestNeighbor = neighbor;
        nearestNeighborDistance = neighborDistance;
      }
    }

    path.add(graph.nodes[currentNode]);
    currentNode = nearestNeighbor ?? 0;
  }

  return path;
}

/// Represents a point in 2D space.
class Point {
  final double x;
  final double y;

  Point(this.x, this.y);

  @override
  String toString() => "P($x, $y)";
}

/// Calculates the Euclidean distance between two points [p1] and [p2].
double distance(Point p1, Point p2) {
  final dx = p2.x - p1.x;
  final dy = p2.y - p1.y;
  return sqrt(dx * dx + dy * dy);
}

/// Constructs a graph from a list of [points].
/// Edge weights correspond to the Euclidean distances between points.
Graph fromPoints(List<Point> points) {
  final List<String> nodes = [];
  final List<List<double>> adjacencyMatrix = [];

  for (final p1 in points) {
    final neighborDistances = <double>[];
    for (final p2 in points) {
      neighborDistances.add(distance(p1, p2));
    }
    nodes.add(p1.toString());
    adjacencyMatrix.add(neighborDistances);
  }

  return Graph(nodes, adjacencyMatrix);
}

void main() {
  // Example graph with predefined nodes and adjacency matrix
  final graph = Graph(
    ["A", "B", "C", "D", "E"],
    [
      [0, 12, 4, 54, 100],
      [3, 0, 5, 1, 1],
      [300, 20, 0, 433, 123],
      [32, 31, 54, 0, 3],
      [2, 65, 12, 32, 0],
    ],
  );

  print(nearestNeighborSearch(graph));

  // Example points to create a graph
  final points = [
    Point(0, 0),
    Point(0, 10),
    Point(-10, 10),
    Point(3.33, 8.11),
    Point(12, 11),
    Point(-1, 1),
    Point(-2, 2),
  ];

  print(nearestNeighborSearch(fromPoints(points)));
}