class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
       redirect_to root_path
    else
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:image, :item_name, :item_description, :category_id, :item_status_id, :shopping_charge_id, :shopping_area_id, :estimated_shopping_date_id, :selling_price).merge(user_id: current_user.id)
  end

end
