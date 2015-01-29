class Transaction < ActiveRecord::Base
validates :debits ,presence: true,
validates :credits, numericality: true, allow_nil:true
  def self.total
    total = 0
    Transaction.all.each do |t|
      total += t.credits.to_f
      total -= t.debits.to_f
    end
    return total
  end

end
