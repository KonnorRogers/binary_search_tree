module BstTop
  # Class for building a binary search tree
  class Tree
    attr_reader :root

    def build_tree(array)
      create_nodes(array)

      @root = array.first

      create_children(array)
    end

    def create_nodes(array)
      array.map! { |value| Node.new(value) }
    end

    def create_children(array)
      index = 0

      while index < array.size
        node = array[index]
        compared_node = array[index + 1]

        if compared_node.value > node.value
          node.right_node = compared_node
        else
          node.left_node = compared_node
        end

        index += 1
      end
    end
  end
end
