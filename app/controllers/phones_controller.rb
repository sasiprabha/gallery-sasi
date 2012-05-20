class PhonesController < ApplicationController
  def new
    @phone = Phone.new
  end
  def show
    @shop = Shop.find_by_name(params[:id])
  end
  def create
    @phone = Phone.new(params[:phone])
    @phone.save
    render 'new'
  end
end
