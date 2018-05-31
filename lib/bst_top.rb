require 'bst_top/version'
require 'bst_top/node.rb'
require 'bst_top/tree.rb'

module BstTop
  # Your code goes here...
  tree = Tree.new
  tree.build_tree([10, 5, 4, 3, 20, 30, 40])
  
  puts tree.breadth_first_search(4)
  puts tree.depth_first_search(4)
end
