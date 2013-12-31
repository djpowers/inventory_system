class InventoriesController < ApplicationController

  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(inventory_params)

    if @inventory.save
      redirect_to @inventory, notice: 'Inventory was successfully created.'
    else
      puts 'There was an error!'
      render :new
    end
  end

  def show
    @inventory = Inventory.find(params[:id])
  end



  private

    def inventory_params
      params.require(:inventory).permit(:title, :description, :quantity)
    end

end
