class SellingPricesController < ApplicationController
  def index
    @selling_prices= SellingPrice.all
  end
end
