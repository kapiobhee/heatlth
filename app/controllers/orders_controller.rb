class OrdersController < ApplicationController
  #訂單只給new create show destroy 不給edit跟update


  def index
    @resturants = User3.all
    @search_resturant = User3.new
    if !params[:resturant_name].nil?
      @resturant_name = User3.where('resturant_name = ?',"#{params[:resturant_name]}")
    end
  end

  def new
    puts "#{params[:resturant_id]}"
    @resturant_meals = Meal.where('resturant_id = ?',"#{params[:resturant_id]}")
    @order_meals = OrderMeal.new
  end


  private
  def order_meal_params
    params.require(:order_meals).permit(:order_id, :meal_id, :quantity)
  end
end
