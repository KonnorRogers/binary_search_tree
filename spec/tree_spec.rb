require 'bst_top/node'
require 'bst_top/tree'

module BstTop
  RSpec.describe Tree do
    array = [1, 2, 3, 4, 5, 6]
    array2 = [7, 3, 4, 10, 20, 5]

    context "#build_tree" do
      it 'sets the root to the first value' do
        tree = Tree.new
        tree.build_tree(array2)

        expect(tree.root.value).to eq 7
      end
    end

    context '#create_nodes(array)' do
      it 'Turns all values in an array to nodes' do
        tree = Tree.new

        ary = tree.create_nodes([1, 2, 3, 4])
        all_are_nodes = ary.all? { |node| node.is_a? Node }
        expect(all_are_nodes).to eq true
      end
    end

    context '#create_children(array)'
  end
end
