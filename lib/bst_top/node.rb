# Binary Search Tree module
module BstTop
  class Node
    attr_accessor :parent_node, :child_node, :value

    def initialize(value)
      @value = value
      @parent_node = nil
      @child_node = nil
    end
  end
end
