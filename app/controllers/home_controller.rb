class HomeController < ApplicationController
  before_action :authenticate_user!, only: :treasure
 
  def index
    if user_signed_in?
      if current_user.is_ta
        redirect_to '/ta/ta_index'
      else 
        redirect_to '/student/student_index'
      end
    end
  end
  
end
