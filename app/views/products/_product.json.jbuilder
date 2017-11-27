json.extract! product, :id, :name, :gender, :price, :filters, :image_url, :created_at, :updated_at
json.url product_url(product, format: :json)
