require "rails_helper"

RSpec.describe ReFacade do
  before :each do
    @merchants = ReFacade.new.all_merchants
    @one_merchant = ReFacade.new.merchant_by_id(1)
    @items = ReFacade.new.merchant_items(1)
  end

  describe "instance methods " do
    context "#all_merchants" do
      it "returns an array of merchant objects" do
        expect(@merchants).to be_a(Array)
        expect(@merchants.first).to be_a(Merchant)
        expect(@merchants.last).to be_a(Merchant)
      end 
    end

    context "#merchant_by_id" do
      it "retuens a merchant object" do
        expect(@one_merchant).to be_a(Merchant)
        expect(@one_merchant.id).to be_a(String)
        expect(@one_merchant.name).to be_a(String)
      end
    end

    context "#merchant_items" do
      it "returns an array of item objects" do
        expect(@items).to be_a(Array)
        expect(@items.first).to be_a(Item)
      end
    end
  end
end