prices = [49.99, 59.99, 19.99, 29.99, 17.77]

Product.delete_all

%w(One Two Three Four Five).each_with_index do |name, i|
  Product.create!(name: name, price: prices[i], released_on: i.days.ago.utc)
end

Product.all.each do |product|
  product.reviews.concat([Review.new(content: 'good stuff')])
end
