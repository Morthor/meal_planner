class ShoppingListItemsController < ApplicationController
  before_action :set_shopping_list_item, only: [:destroy]

  def destroy
    @shopping_list_item.destroy
    respond_to do |format|
      format.js   { render layout: false }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping_list_item
      @shopping_list_item = ShoppingListItem.find(params[:id])
    end
end
