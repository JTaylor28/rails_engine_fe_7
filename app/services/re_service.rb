class ReService
  def fetch_api(url)
    response = connection.get(url)
    JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def get_all_merchants
    fetch_api("merchants")
  end

  def get_one_merchant(id)
    fetch_api("merchants/#{id}")
  end

  def get_merchant_items(id)
    fetch_api("merchants/#{id}/items")
  end

  private
  def connection
    Faraday.new(url: "http://localhost:3000/api/v1/")
  end
end