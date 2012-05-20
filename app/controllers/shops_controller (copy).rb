class ShopsController < ApplicationController
  def new
    @shop = Shop.new
  end


  def update
    if params[:id].nil?
      params[:id] = 'sasishop'
    end
    @shop = Shop.find_by_name(params[:id])
    
    @phone = PhonesInShops.find_by_shop_id(@shop.id)
    
    
  


  end

  def doupdate
    if params[:id].nil?
      params[:id] = 'sasishop'
    end
    @shop = Shop.find_by_name(params[:id])
    
    @phone = PhonesInShops.find_by_shop_id(@shop.id)
    @phone.price = params[:phones_in_shops][:price].to_s
    #@aaa = params[:phones_in_shops][:price]
    @phone.save
    redirect_to '/change/'+params[:id].to_s


  end

  
  def show
    
  end
  def create
    @shop = Shop.new(params[:shop])
    @shop.save
    render 'new'
  end

  
end
