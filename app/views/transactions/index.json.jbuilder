json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :debits, :credits, :number_of_transactions, :total_money
  json.url transaction_url(transaction, format: :json)
end
