class Expense
  include Mongoid::Document

  field :amount, type: BigDecimal
  field :name, type: String

  belongs_to :user
  belongs_to :group

  def self.summed_by_user_and_group(user, group)
    where(user: user, group:group).inject(0){|sum, e| sum + e.amount}
  end
end