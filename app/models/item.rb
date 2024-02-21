class Item < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'authorId_id'
end
