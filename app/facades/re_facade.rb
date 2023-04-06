class ReFacade
  def initialize
    @service = ReService.new
  end

  def all_merchants
    json = @service.get_all_merchants
    
    json.map do |merchant_info|
      Merchant.new(merchant_info)
    end
  end

  def merchant_by_id(merchant_id)
    json = @service.get_one_merchant(merchant_id)
    Merchant.new(json)
  end

  def merchant_items(merchant_id)
    json = @service.get_merchant_items(merchant_id)

    json.map do |merchant_items|
      Item.new(merchant_items)
    end
  end

end