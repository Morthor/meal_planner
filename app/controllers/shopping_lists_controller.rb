class ShoppingListsController < ApplicationController
  before_action :set_shopping_list, only: [:edit, :update, :destroy]
  before_action :check_shopping_list, only: :new

  def index
    @shopping_lists = ShoppingList.all
  end

  def new
    @shopping_list = ShoppingList.new(year: params[:year], week_number: params[:week_number])
    @shopping_list.initialize_list_items
    @shopping_list.shopping_list_items.build
  end

  def edit
    @shopping_list.shopping_list_items.build
  end

  def create
    @shopping_list = ShoppingList.new(shopping_list_params)

    respond_to do |format|
      if @shopping_list.save
        format.html { redirect_to edit_shopping_list_path(@shopping_list), notice: 'Shopping list was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @shopping_list.update(shopping_list_params)
        format.html { redirect_to edit_shopping_list_path(@shopping_list), notice: 'Shopping list was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @shopping_list.destroy
    respond_to do |format|
      format.html { redirect_to shopping_lists_url, notice: 'Shopping list was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping_list
      @shopping_list = ShoppingList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopping_list_params
      params[:shopping_list_items_attributes]
      params.require(:shopping_list).permit(:year, :week_number, shopping_list_items_attributes: [:id, :name, :amount, :units, :bought])
    end

    def check_shopping_list
      shopping_list = ShoppingList.where(year: params[:year], week_number: params[:week_number]).first
      if shopping_list
        redirect_to edit_shopping_list_path(shopping_list)
      end
    end
end
