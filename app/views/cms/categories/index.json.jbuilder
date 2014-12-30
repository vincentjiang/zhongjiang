json.array!(@categories) do |category|
  json.extract! category, :id
  json.url cms_category_url(category, format: :json)
end
