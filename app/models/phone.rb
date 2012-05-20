class Phone < ActiveRecord::Base
  attr_accessible :manufacturer, :model, :price, :img_url
  
  validates :manufacturer, presence:true
  validates :model, presence:true
  validates :img_url, presence:true

  has_many :phones_in_shops

  after_create do
    Shop.all.each do |s|
      PhonesInShops.create(shop_id: s.id,phone_id: id)
    end
  end

end
