module BstTop
  # Class for building a binary search tree
  class Tree
    attr_reader :root

    def initialize
      @root = Node.new
    end

    def build_tree(array)
      @root.value = array.shift if @root.value.nil?

      make_nodes(array)

      array.each do |element|
        set_parent_and_children(element, @root)
      end
    end

    def create_nodes(array)
      array.map! { |value| Node.new(value) }
    end

    # Uses recursion to traverse the tree
    def set_parent_and_children(child, node)
      if child.value <= node.value
        if node.left.nil?
          node.left = child
          child.parent = node
        else
          node = node.left
          create_node(element, node)
        end
      elsif node.right.nil?
        node.right = child
        child.parent = node
      else
        node = node.right
        create_node(child, node)
      end
    end
  end
end
