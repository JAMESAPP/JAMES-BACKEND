json.array!(@refuels) do |refuel|
  json.extract! refuel, :id, :date, :KM, :amount, :price, :gas_station, :observation
  json.url refuel_url(refuel, format: :json)
end
