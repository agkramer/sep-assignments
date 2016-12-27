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


  # Recursive Depth First Search by Title
  def findByTitle(root, title) # data is a title (string)
    unless root.nil? || title.nil?
      if root.title == title
        node = root
      else
        if root.left
          node = findByTitle(root.left, title)
        end

        if root.right
          node = findByTitle(root.right, title)
        end
      end
    end

    node
  end


  # Binary Search by Rating
  def findByRating(root, rating)
    unless root.nil? || rating.nil?
      if root.rating == rating
        node = root
      else
        if rating < root.rating
          node = findByRating(root.left, rating)
        else
          node = findByRating(root.right, rating)
        end
      end
    end

    node
  end


  def delete(root, title)

    node_to_delete = findByTitle(root, title)

    def delete(root, node)

    end

    unless root.nil? || title.nil?

      if root == nil
        return root
      elsif rating < root.rating
        root.left = delete(root.left, title)
      elsif rating > root.rating
        root.right = delete(root.right, title)
      else
        if root.left == nil && root.right == nil
          return nil
        elsif root.right == nil
          return root.left
        elsif root.left == nil
          return root.right
        end
      end
    end

    def delete(tnode, node)

      if tnode =
    end
  end


  # Recursive Breadth First Search
  def printf(children=nil)
    queue = [@root]
    returned_string = ""

    until queue.empty?
      temp_root = queue.shift

      unless temp_root.left == nil
        queue << temp_root.left
      end
      unless temp_root.right == nil
        queue << temp_root.right
      end

      returned_string << "#{temp_root.title}: #{temp_root.rating}\n"
    end

    puts returned_string
  end
end
