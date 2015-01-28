json.array!(@accounts) do |account|
  json.extract! account, :id, :debits, :credits, :number_of_transactions, :total_money
  json.url account_url(account, format: :json)
end
