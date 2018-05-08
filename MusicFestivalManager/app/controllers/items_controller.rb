class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
  end

  def show
  end

  def create
    @item = Item.create(item_params)
    if @item.valid?
      redirect_to @item
    else
      flash[:errors] = @item.errors.full_messages
      redirect_to new_item_path
    end
  end

  def edit
  end

  def update
    @item.update(item_params)
    if @item.valid?
      redirect_to @item
    else
      flash[:errors] = @item.errors.full_messages
      redirect_to edit_item_path(@item)
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:title, :artist_id, :stage_id)
  end

  def find_item
    @item = Item.find(params[:id])
  end

end
