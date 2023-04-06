require "rails_helper"

RSpec.describe ReService, type: :service do
 
  describe "instance methods" do
    it "#get_all_merchants" do
      all_merchants_request = ReService.new.get_all_merchants

      expect(all_merchants_request).to be_a(Array)

      expect(all_merchants_request.first.keys).to eq([:id, :type, :attributes])
      expect(all_merchants_request.first[:id]).to be_a(String)
      expect(all_merchants_request.first[:type]).to be_a(String)
      expect(all_merchants_request.first[:attributes]).to be_a(Hash)

      expect(all_merchants_request.first[:attributes].keys).to eq([:name])
      expect(all_merchants_request.first[:attributes][:name]).to be_a(String) 
    end

    it "#get_one_merchant" do
      one_merchant_request = ReService.new.get_one_merchant("/1")
      expect(one_merchant_request.keys).to eq([:id, :type, :attributes])
      expect(one_merchant_request[:attributes].keys).to eq([:name])
    end

    it "#get_merchant_items" do
      merchants_items = ReService.new.get_merchant_items("/1")
      expect(merchants_items).to be_a(Array)
      expect(merchants_items[0][:type]).to eq("item")
      expect(merchants_items[0][:attributes].keys).to eq([:name, :description, :unit_price, :merchant_id])
    end
  end
end