class AddImgUrlToPhones < ActiveRecord::Migration
  def change
    add_column :phones, :img_url, :string
  end
end
