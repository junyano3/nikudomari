class CutsController < ApplicationController
  def new
    @cut = Cut.new
  end

  def create
    # @selling_price = SellingPrice.new(selling_price_params)
    # if @selling_price.save
    #   redirect_to selling_prices_path
    # else
    #   render :new
   
  end

end
