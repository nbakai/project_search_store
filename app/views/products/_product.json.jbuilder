json.extract! product, :id, :name, :description, :stock, :price, :sku, :created_at, :updated_at
json.url product_url(product, format: :json)
