module BstTop
  # Class for building a binary search tree
  class Tree
    attr_reader :root

    def initialize
      @root = Node.new
    end

    def build_tree(array)
      
      @root.value = array.shift if @root.value.nil?

      array = create_nodes(array)

      array.each do |element|
        set_parent_and_children(element, @root)
      end
    end

    def create_nodes(array)
      # Removes duplicate values & then returns a new array
      array.uniq.map { |value| Node.new(value) }
    end

    # Uses recursion to traverse the tree
    # Faster to set children and parents in one method rather than make it two
    # Could split up into setting parents & setting children
    # For easier readability
    def set_parent_and_children(current_node, compared_node)
      current_node_is_smaller = current_node.value <= compared_node.value
      
      if current_node_is_smaller && compared_node.left_child.nil?
        compared_node.left_child = current_node
        current_node.parent = compared_node
        return
      end
      
      if !(current_node_is_smaller) && compared_node.right_child.nil?
        compared_node.right_child = current_node
        current_node.parent = compared_node
        return
      end
      
      if current_node_is_smaller
        compared_node = compared_node.left_child
        set_parent_and_children(current_node, compared_node)
      else
        compared_node = compared_node.right_child
        set_parent_and_children(current_node, compared_node)
      end
    end
    
    # FIFO principle (Queue)
    def breadth_first_search(value)
      return nil if @root.nil?
      
      queue = [@root]
      
      until queue.empty?
        # p queue.map { |node| node.value }
        # used to visualize the traversal
        
        node = queue.shift
        return node if node.value == value
        
        queue << node.left_child unless node.left_child.nil?
        queue << node.right_child unless node.right_child.nil?
      end
      
      nil
    end
    
    # LIFO principle (stack)
    def depth_first_search(value)
      return nil if @root.nil?
      
      stack = [@root]
      
      until stack.empty?
        # p stack.map { |node| node.value }
        # used to visualize the traversal
        
        node = stack.pop
        return node if node.value == value
        
        stack << node.right_child unless node.right_child.nil?
        stack << node.left_child unless node.left_child.nil?
      end
      
      nil
    end
    
    def dfs_recursive(target_value, node = @root)
      p node.value
      #base case
      return node if node.value == target_value
      
      return dfs_recursive(target_value, node.left_child) unless node.left_child.nil?
      return dfs_recursive(target_value, node.right_child) unless node.right_child.nil?
    end
  end
end
