json.array!(@replies) do |reply|
  json.extract! reply, :id, :user_name, :body, :reply_id, :picture
  json.url reply_url(reply, format: :json)
end
