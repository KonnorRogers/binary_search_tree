require 'bst_top/node'
require 'bst_top/tree'

module BstTop
  RSpec.describe Tree do
    context '#build_tree(array)' do
      it "root should be 4" do
        tree = Tree.new
        tree.build_tree([1, 2, 3, 4, 5, 6])

        expect(tree.root).to eq(4)
      end
    end
  end
end
