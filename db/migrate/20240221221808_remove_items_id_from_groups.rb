class RemoveItemsIdFromGroups < ActiveRecord::Migration[7.1]
  def change
    remove_column :groups, :items_id
  end
end
