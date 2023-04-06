require "rails_helper" 

RSpec.describe Item do

  let!(:item_1) {ReFacade.new.merchant_items(1).first}

  it "exists" do
    expect(item_1).to be_a(Item)
  end

  it "has attributes" do
    expect(item_1.id).to be_a(String)
    expect(item_1.name).to be_a(String)
    expect(item_1.description).to be_a(String)
    expect(item_1.unit_price).to be_a(Float)
    expect(item_1.merchant_id).to be_a(Integer)
  end
end