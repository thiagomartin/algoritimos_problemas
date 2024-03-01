#entendendo Prim em cod

class Graph
  attr_accessor :vertices, :edge

  def initialize(vertices, edge)
    @vertices = vertices
    @edges = edge
  end
end


def prim(graph)
  result = []
  visited = Array.new(graph.vertices, false)
  heap =[]

  heap << [0, 0]

while heap.any?
  weight, curent_vertex = heap.pop

end


end
