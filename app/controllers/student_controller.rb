class StudentController < ApplicationController
    
    def student_index
    end
      
    def student_help
    end
    
    def save_seat_number
        person = User.find(current_user.id)
        person.seat_number = params[:seat_number]
        person.save
        redirect_to '/student/student_index'
    end

    
end
