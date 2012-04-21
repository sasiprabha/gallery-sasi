class Phone < ActiveRecord::Base
  attr_accessible :manufacturer, :model, :price
  
  validates :manufacturer, presence:true, uniqueness:true
  validates :model, presence:true, uniqueness:true
end
