json.array!(@cms_products) do |cms_product|
  json.extract! cms_product, :id, :title, :author, :desc, :long_desc
  json.url cms_product_url(cms_product, format: :json)
end
