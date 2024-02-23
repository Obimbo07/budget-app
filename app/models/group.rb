class Group < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy

  def total_amount
    items.sum(:amount)
  end
end
