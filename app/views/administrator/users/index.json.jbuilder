json.array!(@administrator_users) do |administrator_user|
  json.extract! administrator_user, :id
  json.url administrator_user_url(administrator_user, format: :json)
end
