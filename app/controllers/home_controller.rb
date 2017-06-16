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
  
  def ta_index
  end
  
  def student_index
        person = User.find(current_user.id)
        puts current_user.id
        puts params[:seat_number]
        person.seat_number = params[:seat_number]
        person.save
  end
  
  def treasure
  end
end