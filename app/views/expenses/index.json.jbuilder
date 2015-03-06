json.array!(@expenses) do |expense|
  json.extract! expense, :id, :date, :amount, :accountFrom, :accountTo, :memo
  json.url expense_url(expense, format: :json)
end
