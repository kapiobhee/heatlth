class MealsController < ApplicationController

  before_action :authenticate_user3!

  def index
    @resturant_id = current_user3.id
    @meals = Meal.where("resturant_id = #{@resturant_id}")
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    puts "here is '#{current_user3.id}'"
    @meal.resturant_id = current_user3.id
    @meal.save

    redirect_to :action => 'index'
  end

  def show
    @meal = Meal.find(params[:id])
  end

  private
  def meal_params
    params.require(:meal).permit(:name, :calory, :protein, :vitaminA6, :vitaminD7, :vitaminE8, :vitaminK, :vitaminC, :vitaminB1, :vitaminB2, :vitaminB3, :vitaminB6, :vitaminB12, :vitaminB9, :cholic_acid, :bionic_acid, :vitaminB5, :calcuim, :phosphorus, :magnesium, :iron, :zinc, :iodine, :selenium, :fluorine)
  end

end
