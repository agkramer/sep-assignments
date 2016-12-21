require_relative 'node'

class BinarySearchTree

  def initialize(root)
    @root = root
  end

  def insert(root, node)
    if node.rating < root.rating
      root.left ? insert(root.left, node) : root.left = node
    else
      root.right ? insert(root.right, node) : root.right = node
    end
  end

  # Recursive Depth First Search
  def find(root, data)
  end

  def delete(root, data)
  end

  # Recursive Breadth First Search
  def printf(children=nil)
  end
end
