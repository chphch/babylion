class StudentController < ApplicationController
  
    def student_index
        person = User.find(current_user.id)
        puts current_user.id
        puts params[:seat_number]
        person.seat_number = params[:seat_number]
        person.save
    end
      
    def student_help
        @questions = Question.where(user_id: current_user.id).last(5)
    end
    
    def create_question
        @question = Question.new
        @question.user_id = current_user.id
        @question.text = params[:content]
        @question.save
        render json: {user_name: @question.user.name, text: @question.text} 
    end
    
    def create_emergency
        if current_user.emergency_help
            current_user.update(emergency_help: false)
        else
            current_user.update(emergency_help: true)
        end
        
        redirect_to '/student/student_help'
    end
    
    def save_seat_number
        person = User.find(current_user.id)
        person.seat_number = params[:seat_number]
        person.save
        redirect_to '/student/student_index'
    end

end
