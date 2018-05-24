# Binary Search Tree module
module BstTop
  attr_accessor :value, :parent_node, :child_node

  # Node of a Binary Search Tree
  class Node
    def initialize(value)
      @value = value
      @parent_node = nil
      @child_node = nil
    end
  end
end
