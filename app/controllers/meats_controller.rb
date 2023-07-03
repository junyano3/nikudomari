class MeatsController < ApplicationController
  before_action :set_meat, only: [:edit, :update, :show, :destroy]
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

  if current_user.id == @meat.user.id
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

def show

end

def destroy

  if current_user.id == @meat.user_id
    @meat.destroy
    redirect_to root_path
  else
    redirect_to root_path
  end
end
  private

  def meat_params
    params.require(:meat).permit(:meat_brand, :prefecture_id, :meat_name,:total_weight,:cost_price ).merge(user_id: current_user.id)
  end
def set_meat
  @meat = Meat.find(params[:id])
end

end
