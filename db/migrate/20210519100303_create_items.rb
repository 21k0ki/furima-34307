class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :item_name,                   null: false
      t.text :item_description,              null: false
      t.integer :category_id,                null: false
      t.integer :item_status_id,             null: false
      t.integer :shopping_charge_id,         null: false
      t.integer :shopping_area_id,           null: false
      t.integer :estimated_shopping_date_id, null: false
      t.integer :selling_price,              null: false
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
