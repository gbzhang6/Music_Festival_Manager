class ItemsController < ApplicationController
  before_action :find_item, only: [:show]

  def index
    @items = Item.all
  end

end
