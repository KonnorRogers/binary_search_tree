require 'bst_top/node.rb'

module BstTop
  RSpec.describe Node do
    context '#initialize' do
      it 'Will not create a Node without data' do
        expect { Node.new }.to raise_error ArgumentError
      end

      it 'Initializes with the given value' do
        expect(Node.new(5).value).to eq 5
      end

      it 'Sets parents & child nodes to nil' do
        expect(Node.new(5).child_node).to eq nil
        expect(Node.new(5).parent_node).to eq nil
      end
    end
  end
end
