class InventoriesController < ApplicationController

  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(inventory_params)

    if @inventory.save
      redirect_to @inventory, notice: 'Inquiry was successfully created.'
    end
  end

  def show

  end



  private

    def inventory_params
      params.require(:inventory).permit(:title, :description, :quantity)
    end

end
