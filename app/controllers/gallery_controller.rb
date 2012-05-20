class GalleryController < ApplicationController
  def home
  end
  def shop
    @shop = Shop.find(1)
  end
  def show
    if params[:id].nil?
      params[:id] = 'sasishop'
    end
    @shop = Shop.find_by_name(params[:id])

    
  end
 
end
