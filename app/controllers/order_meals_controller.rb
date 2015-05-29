class OrderMealsController < ApplicationController

  def create
    @order_meals = OrderMeal.new(order_meal_params)
    @order_meals.save
    redirect_to :controller => "orders", :action => "new" , :resturant_id => "1"
  end

  private
  def order_meal_params
    params.require(:order_meal).permit(:order_id, :meal_id, :quantity)
  end

end
