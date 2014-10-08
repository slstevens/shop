require 'shop'

describe Shop do

	let(:shop) {Shop.new("Tescos")}
	let(:item) {double :item, :name => "Noodles", :price => 4.70}

	it "should have a name" do
		expect(shop.name).to eq("Tescos")
	end

	it "should initialize with empty inventory" do
		expect(shop.inventory).to eq []
	end

	it "should allow items to be added to the store" do
		shop.add(item)
		expect(shop.inventory).to eq [item]
	end

	it "should allow items to be sold from the store" do
		shop.add(item)
		shop.sell(item)
		expect(shop.inventory).to eq []
	end

	it "should have a till with £100 in it" do
		expect(shop.till_balance).to eq 100
	end

	it "should take money for a sale" do
		shop.add(item)
		shop.sell(item)
		expect(shop.till_balance).to eq(100 + item.price)
	end
end