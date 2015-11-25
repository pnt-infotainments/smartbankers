json.array!(@posts) do |post|
  json.extract! post, :id, :title, :description, :post_type_id
  json.url post_url(post, format: :json)
end
