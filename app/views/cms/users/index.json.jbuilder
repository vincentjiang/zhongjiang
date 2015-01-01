json.array!(@cms_users) do |cms_user|
  json.extract! cms_user, :id, :name, :email, :admin
  json.url cms_user_url(cms_user, format: :json)
end
