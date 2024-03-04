#entendendo Kruskal em cod



class Graph
  attr_accessor :vertices, :edges

  def initialize(vertices, edges)
    @vertices = vertices
    @edges = edges
  end
end

class UnionFind
  def initialize(size)
    @parent = Array.new(size, -1)
  end

  def union(x, y)
    root_x = find(x)
    root_y = find(y)
    @parent[root_x] = root_y
  end

  def find(x)
    return x if @parent[x] == -1
    find(@parent[x])
  end
end

def kruskal(graph)
  result = []
  graph.edges = graph.edges.sort_by { |edge| edge[2] }
  union_find = UnionFind.new(graph.vertices)
  graph.edges.each do |edge|
    u, v, weight = edge

    if union_find.find(u) != union_find.find(v)
      result << edge
      union_find.union(u, v)
    end
  end
  result
end

vertices = 4
edges = [
  [0, 1, 2],
  [0, 2, 4],
  [1, 2, 3],
  [1, 3, 5],
  [2, 3, 5]
]

graph = Graph.new(vertices, edges)
minimum_spanning_tree = kruskal(graph)
puts "Arestas da árvore geradora mínima:"
minimum_spanning_tree.each { |edge| puts "#{edge[0]} - #{edge[1]}: #{edge[2]}" }

