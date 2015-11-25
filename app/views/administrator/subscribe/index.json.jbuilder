json.array!(@subscribes) do |subscribe|
  json.extract! subscribe, :id, :user_id, :type
  json.url subscribe_url(subscribe, format: :json)
end
