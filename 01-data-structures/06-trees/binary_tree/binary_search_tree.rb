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
    unless root.nil? || data.nil?
      if root.title == data
        node = root
      else
        if root.left
          node = find(root.left, data)
        end

        if root.right
          node = find(root.right, data)
        end
      end
    end

    node
  end



  # def findByRating(root, ranking) #rating == ranking
  #
  # end

  def delete(root, data)

    # if no children (left.nil? && right.nil?), remove

    # elseif one child (left.nil), move child into its place

    # else


  end

  # Recursive Breadth First Search
  def printf(children=nil)
  end
end
