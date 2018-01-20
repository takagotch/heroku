def Product.out_of_stock
	Rails.cache.fetch("out_of_stock_products", :expires_in => 5.minutes) do
    Product.all.joins(:inventory).conditions.where("inventory.quantity = 0")
  end
end

def competing_price
  Rails.cache.fetch("/product/#{id}-#{update_at}/comp_price", :expires_in => 12.hours) do
    Competitor::API.find_price(id)
  end
end

