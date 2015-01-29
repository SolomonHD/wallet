class Transaction < ActiveRecord::Base

  def self.total
    total = 0
    Transaction.all.each do |t|
      total += t.credits.to_f
      total -= t.debits.to_f
    end
    return total
  end

end
