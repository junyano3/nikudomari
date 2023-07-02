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

def index
  @meats = Meat.all
end

def edit
  if current_user.id == @meat.user_id
  else
    redirect_to root_path
  end
end

def update
  if @meat.update(meat_params)
    redirect_to meat_path
  else
    render :edit
  end
end
  private

  def meat_params
    params.require(:meat).permit(:meat_brand, :prefecture_id, :meat_name,:total_weight,:cost_price )
  end

end
