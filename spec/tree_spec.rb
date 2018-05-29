require 'bst_top/node'
require 'bst_top/tree'

module BstTop
  RSpec.describe Tree do
    context '#build_tree' do
      it 'sets the root to the first value' do
        tree = Tree.new
        tree.build_tree([7, 5, 4, 3, 2])

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

    context '#set_parent_and_children(array)' do
      it 'Sets the children and parent nodes' do
        tree = Tree.new

        tree.build_tree([7, 5, 10, 2, 12])

        expect(tree.root.right_node.value).to eq 10
        expect(tree.root.left_node.value).to eq 5
      end
    end
  end
end
