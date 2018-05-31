require 'bst_top/node.rb'

module BstTop
  RSpec.describe Node do
    context '#initialize' do
      it 'Will create a node w/ nil data' do
        expect(Node.new.value).to eq nil
      end

      it 'Initializes with the given value' do
        expect(Node.new(5).value).to eq 5
      end

      it 'Sets parents & children nodes to nil' do
        expect(Node.new(5).right_child).to eq nil
        expect(Node.new(5).parent).to eq nil
        expect(Node.new(5).left_child).to eq nil
      end
    end
  end
end
