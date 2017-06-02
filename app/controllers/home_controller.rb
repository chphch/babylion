class HomeController < ApplicationController
  before_action :authenticate_user!, only: :treasure
 
  def index
    if user_signed_in?
      if current_user.is_ta
        redirect_to '/home/ta_index'
      else 
        redirect_to '/home/student_index'
      end
    end
  end
  
  def ta_index
    
  end
  
  def student_index
    
  end
  
  def treasure
  end
end