class Group
  include Mongoid::Document

  field :name, type: String

  has_and_belongs_to_many :members, class_name: 'User', inverse_of: :groups
  has_many :expenses do
    def total
      @target.inject(0) do |sum, expense|
        sum + expense.amount
      end
    end
  end
end
