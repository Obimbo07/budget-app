class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :amount
      t.references :authors, null: false, foreign_key: { to_table: :users }
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
