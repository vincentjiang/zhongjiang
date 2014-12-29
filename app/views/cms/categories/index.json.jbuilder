json.array!(@cms_categories) do |cms_category|
  json.extract! cms_category, :id
  json.url cms_category_url(cms_category, format: :json)
end
