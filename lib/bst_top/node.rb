# Binary Search Tree module
module BstTop
  class Node
    attr_accessor :parent_node, :right_node, :left_node, :value

    def initialize(value)
      @value = value
      @parent_node = nil
      @right_node = nil
      @left_node = nil
    end
  end
end
