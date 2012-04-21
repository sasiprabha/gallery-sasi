class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :manufacturer
      t.string :model
      t.integer :price

      t.timestamps
    end
  end
end
