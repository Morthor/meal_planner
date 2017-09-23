class IngredientsAmountsController < ApplicationController
  before_action :set_ingredient_amount, only: [:destroy]

  def destroy
    @ingredient_amount.destroy
    respond_to do |format|
      format.js   { render layout: false }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient_amount
      @ingredient_amount = IngredientsAmount.find(params[:id])
    end
end
