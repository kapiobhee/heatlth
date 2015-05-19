class MembersController < ApplicationController

  before_action :authenticate_user!, except: [:index]

  def index
    if (!current_user)
      redirect_to new_user_session_path
    end
  end
end

