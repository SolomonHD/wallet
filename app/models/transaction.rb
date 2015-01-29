class Transaction < ActiveRecord::Base

  def self.total
    Transaction.all.each do |t|
      total = 0

      total += t.credits.to_f
      total -= t.debits.to_f
      return total
  end
  end

end
