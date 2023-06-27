class MeatsController < ApplicationController
  def new
    @meat = Meat.new
  end
  
  def create
        @meat = Meat.new(meat_params)
     if @meat.save
      redirect_to root_path
     else
       render :new
    
  end
end

  private

  def meat_params
    params.require(:meat).permit(:meat_brand, :prefecture_id, :meat_name,:total_weight,:cost_price )
  end

end
