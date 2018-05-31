# Binary Search Tree module
module BstTop
  class Node
    attr_accessor :parent, :right_child, :left_child, :value

    def initialize(value = nil)
      @value = value
      @parent = nil
      @right_child = nil
      @left_child = nil
    end
  end
end
