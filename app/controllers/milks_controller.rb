class MilksController < ApplicationController
  def index
    @milks = Milk.order("created_at DESC")
  end

  def new
    @milk = Milk.new
    @milks = Milk.all
  end

  def create
    @milk = Milk.new(milk_params)
    if @milk.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @milk = Milk.find(params[:id])
  end

  def update
    milk = Milk.find(params[:id])
    milk.update(milk_params)
    redirect_to root_path
  end

  def destroy
    milk = Milk.find(params[:id])
    milk.destroy
    redirect_to root_path
  end

  private

  def milk_params
    params.require(:milk).permit(:condition_id, :amount_id, :time, :image).merge(user_id: current_user.id)
  end
end
