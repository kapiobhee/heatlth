class OrdersController < ApplicationController
  #訂單只給new create show destroy 不給edit跟update


  def index
    @resturants = User3.all
    @search_resturant = User3.new
    if !params[:resturant_name].nil?
      @resturant_name = User3.where('resturant_name = ?',"#{params[:resturant_name]}")
    end
  end

end
