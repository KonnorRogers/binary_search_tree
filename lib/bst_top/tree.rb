module BstTop
  class Tree
    attr_accessor :root

    def build_tree(array)
      # Assumes array is sorted
      middle = array.size / 2
      @root = array[middle]

      insert_node
    end

    def insert_node(node)

    end
  end
end