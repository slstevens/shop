require 'item'

describe Item do

	let(:item)	{Item.new("Bread", 4.4)}

	it 'should initialize with a name' do
		expect(item.name).to eq("Bread")
	end

	it 'should initialize with a price' do
		expect(item.price).to eq(4.4)
	end
end