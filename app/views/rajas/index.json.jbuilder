json.array!(@rajas) do |raja|
  json.extract! raja, :id, :sender, :reciver, :message
  json.url raja_url(raja, format: :json)
end
