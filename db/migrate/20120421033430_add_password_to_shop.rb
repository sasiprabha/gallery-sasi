class AddPasswordToShop < ActiveRecord::Migration
  def change
    add_column :shops, :password_digest, :string
  end
end
