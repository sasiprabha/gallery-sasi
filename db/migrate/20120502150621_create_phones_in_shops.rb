class CreatePhonesInShops < ActiveRecord::Migration
  def change
    create_table :phones_in_shops do |t|
      t.integer :phone_id
      t.integer :shop_id
      t.integer :price

      t.timestamps
    end
    add_index :phones_in_shops , [:shop_id, :phone_id]
  end
end
