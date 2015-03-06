json.array!(@oil_exchanges) do |oil_exchange|
  json.extract! oil_exchange, :id, :date, :KM, :amount, :price, :observation
  json.url oil_exchange_url(oil_exchange, format: :json)
end
