require "rails_helper"

RSpec.describe Merchant do
  let!(:merchant_1) {ReFacade.new.all_merchants.first}

  it "exisits" do
    expect(merchant_1).to be_a(Merchant)
  end

  it "has attributes" do
    expect(merchant_1.name).to be_a(String)
    expect(merchant_1.id).to be_a(String)
  end
end