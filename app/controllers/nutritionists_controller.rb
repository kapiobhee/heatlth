class NutritionistsController < ApplicationController

  before_action :authenticate_user2!, except: [:index]


  def index
    if (!current_user2)
      redirect_to new_user2_session_path
    end
  end

end
