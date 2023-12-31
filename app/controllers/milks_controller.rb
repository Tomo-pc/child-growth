class MilksController < ApplicationController
  before_action :authenticate_user!

  def index
    @milks = Milk.order('created_at DESC')
    @user = current_user
  end

  def new
    @milk = Milk.new
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
    return if current_user == @milk.user

    redirect_to root_path
  end

  def update
    @milk = Milk.find(params[:id])
    if @milk.update(milk_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
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
