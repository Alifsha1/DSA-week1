class Graph {
  late List<String> vertices = [];
  late Map<String, List<String>> edges = {};
  Graph() {
    vertices = [];
    edges = {};
  }
  void addVertex(String vertex) {
    vertices.add(vertex);
    edges[vertex] = [];
  }

  void addEdges(String vtx1, String vtx2) {
    if (edges.containsKey(vtx1) && edges.containsKey(vtx2)) {
      edges[vtx1]!.add(vtx2);
      edges[vtx2]!.add(vtx1);
    } else {
      print('first add vertex');
    }
  }

  void dispaly() {
    for (var vertex in vertices) {
      String neighbours = edges[vertex]!.join(', ');
      print('$vertex --> $neighbours');
    }
  }

  bool hasEdge(vertex1, vertex2) {
    return edges[vertex1]!.contains(vertex2) &&
        edges[vertex2]!.contains(vertex1);
  }

  deleteedge(vertex1, vertex2) {
    edges[vertex1]!.remove(vertex2);
    edges[vertex2]!.remove(vertex1);
  }

  deletevertex(vertex) {
    if (!edges.containsKey(vertex)) {
      return null;
    }
    edges.remove(vertex);
    for (var othervertex in edges.keys) {
      edges[othervertex]!.remove(vertex);
    }
    vertices.remove(vertex);
  }

  void bfs(String startvertex) {
    Set<String> visited = {};
    List<String> queue = [];
    visited.add(startvertex);
    queue.add(startvertex);
    while (queue.isNotEmpty) {
      String vertex = queue.removeAt(0);
      print('bfs--$vertex');
      for (String neighbor in edges[vertex]!) {
        if (!visited.contains(neighbor)) {
          visited.add(neighbor);
          queue.add(neighbor);
        }
      }
    }
  }

  void dfs(String startvertex) {
    Set<String> visited = {};
    void dfsheper(String vertex) {
      visited.add(vertex);
      print('dfs--$vertex');
      for (String neighbor in edges[vertex]!) {
        visited.add(neighbor);
        dfsheper(neighbor);
      }
    }

    dfsheper(startvertex);
  }
}

void main() {
  Graph gh = Graph();
  gh.addVertex("A");
  gh.addVertex("B");
  gh.addVertex("C");
  gh.addVertex("D");
  gh.addEdges("A", "D");
  gh.addEdges("A", "C");
  gh.addEdges("C", "B");
  gh.addEdges("B", "D");
  gh.dispaly();
  print(gh.hasEdge("A", "C"));
  gh.deleteedge("A", "D");
  gh.dispaly();
  gh.bfs("A");
  gh.bfs("A");
  gh.deleteedge("A", "C");
  gh.dispaly();
  gh.deletevertex("D");
  gh.dispaly();
}
