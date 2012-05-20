class PhonesInShops < ActiveRecord::Base
  attr_accessible :phone_id, :price, :shop_id
  belongs_to :Phone
  belongs_to :Shop
  validates:phone_id, presence:true 
  validates:shop_id, presence:true
end
