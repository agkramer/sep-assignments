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
  def find(root, data) # data is a title, so annoying
    if data.nil?
      return nil
    end

    if root.title == data
      return root
    else
      if root.left
        left = find(root.left, data)
      end

      if root.right
        right = find(root.right, data)
      end

      if left
        return left
      elsif right
        return right
      else
        return nil
      end
    end
  end

  def delete(root, data)
  end

  # Recursive Breadth First Search
  def printf(children=nil)
  end
end
