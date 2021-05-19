class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.text :item_description
      t.integer :category_id
      t.integer :item_status_id
      t.integer :shopping_charge_id
      t.integer :shopping_area_id
      t.integer :estimated_shopping_date_id
      t.integer :selling_price
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
