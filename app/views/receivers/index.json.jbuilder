json.array!(@receivers) do |receiver|
  json.extract! receiver, :id, :phone, :name, :active, :last_sent, :sex
  json.url receiver_url(receiver, format: :json)
end
