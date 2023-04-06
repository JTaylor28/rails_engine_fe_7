class MerchantsController < ApplicationController
  def index
    # response = Faraday.get('http://localhost:3000/api/v1/merchants')
    # @merchants = JSON.parse(response.body, symbolize_names: true)[:data]
    
    @merchants = ReFacade.new.all_merchants
  end
  
  def show
    # response_merchant = Faraday.get("http://localhost:3000/api/v1/merchants/#{params[:id]}")
    # @merchant = JSON.parse(response_merchant.body, symbolize_names: true)[:data]

    @merchant = ReFacade.new.merchant_by_id(params[:id])

    # response_item = Faraday.get("http://localhost:3000/api/v1/merchants/#{params[:id]}/items")
    # @items = JSON.parse(response_item.body, symbolize_names: true)[:data]

    @items = ReFacade.new.merchant_items(params[:id])
  end
end