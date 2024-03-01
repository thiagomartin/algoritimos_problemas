#entendendo Prim em cod

class Graph
  attr_accessor :vertices, :edges

  def initialize(vertices, edges)
    @vertices = vertices
    @edges = edges
  end
end


def prim(graph)
  result = []
  visited = Array.new(graph.vertices, false)
  heap =[]

  heap << [0, 0]

while heap.any?
    weight, curent_vertex = heap.pop
    next if visited[curent_vertex]          #testando next if
    visited[curent_vertex] = true
    result << [weight, curent_vertex]        #adiciona na arvore geradora minima o peso e o vertice

    graph.edges.each do |edge|
    neighbor, edge_weight = edge[1], edge[2]
    heap <<  [edge_weight, neighbor] unless visited[neighbor]
  end

    heap.sort! { |a, b| a[0] <=> b[0]}
  end
  result
end

vertice = 5
edges = [
  [0, 1, 2],
  [0, 2, 4],
  [1, 2, 1],
  [1, 3, 3],
  [2, 3, 5],
  [2, 4, 1],
  [3, 4, 4]
]

graph = Graph.new(vertice, edges)
minimum_spanning_tree = prim(graph)

puts " Arestas da árvore geradora minima:"
minimum_spanning_tree.each { |edge| puts "#{edge[0]} - #{edge[1]}"}
