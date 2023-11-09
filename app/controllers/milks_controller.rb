class MilksController < ApplicationController
  def index
    @milks = Milk.all
  end
end
