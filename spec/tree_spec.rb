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
      
      it 'Creates a tree in logical order sorting as it goes' do
        tree = Tree.new
        tree.build_tree([5, 10, 20, 4, 3, 2])
        
        expect(tree.root.value).to eq 5
        expect(tree.root.right_child.value).to eq 10
        expect(tree.root.left_child.value).to eq 4
        expect(tree.root.left_child.left_child.value).to eq 3
        expect(tree.root.right_child.right_child.value).to eq 20
      end
    end

    context '#create_nodes(array)' do
      it 'Turns all values in an array to nodes' do
        tree = Tree.new

        ary = tree.create_nodes([1, 2, 3, 4])
        all_are_nodes = ary.all? { |node| node.is_a? Node }
        expect(all_are_nodes).to eq true
      end
      
      it 'Removes duplicated values' do
        tree = Tree.new
        
        ary = tree.create_nodes([1, 1, 1, 3, 4])
        expect(ary.length).to eq 3
        expect(ary[1].value).to eq 3
      end
    end

    context '#set_parent_and_children(array)' do
      it 'Sets the children and parent nodes' do
        tree = Tree.new

        tree.build_tree([7, 5, 10, 2, 12])

        expect(tree.root.right_child.value).to eq 10
        expect(tree.root.left_child.value).to eq 5
      end
    end
    
    context '#breadth_first_search(value)' do
      it 'returns nil if no root set' do
        tree = Tree.new
        expect(tree.breadth_first_search(5)).to eq nil
      end
      
      it 'returns nil if the value is not in the tree' do
        tree = Tree.new
        tree.build_tree([5, 4, 10, 20, 50, 3])
        
        expect(tree.breadth_first_search(40)).to eq nil
      end
      
      it 'returns the node if the node is in the search' do
        tree = Tree.new
        tree.build_tree([5, 10, 15, 4, 3, 2])
        
        expect(tree.breadth_first_search(4).value).to eq 4
        expect(tree.breadth_first_search(4)).to be_an_instance_of Node
      end
    end
    
    context '#depth_first_search(value)' do
      it 'returns nil if no root set' do
        tree = Tree.new
        expect(tree.depth_first_search(5)).to eq nil
      end
      
      it 'returns nil if the value is not in the tree' do
        tree = Tree.new
        tree.build_tree([5, 4, 10, 20, 50, 3])
        
        expect(tree.depth_first_search(40)).to eq nil
      end
      
      it 'returns the node if the node is in the search' do
        tree = Tree.new
        tree.build_tree([5, 10, 15, 4, 3, 2])
        
        expect(tree.depth_first_search(4).value).to eq 4
        expect(tree.depth_first_search(4)).to be_an_instance_of Node
      end
    end
    
    context '#dfs_recursive(value, node)' do
      it 'returns nil if no root set' do
        tree = Tree.new
        expect(tree.dfs_recursive(5)).to eq nil
      end
      
      it 'returns nil if the value is not in the tree' do
        tree = Tree.new
        tree.build_tree([5, 4, 10, 20, 50, 3])
        
        expect(tree.dfs_recursive(40)).to eq nil
      end
      
      it 'returns the node if the node is in the search' do
        tree = Tree.new
        tree.build_tree([5, 10, 15, 4, 3, 2])
        
        expect(tree.dfs_recursive(2).value).to eq 2
        expect(tree.dfs_recursive(2)).to be_an_instance_of Node
      end
    end
  end
end
