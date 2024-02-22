class Item < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'authors_id'
  belongs_to :group
end
