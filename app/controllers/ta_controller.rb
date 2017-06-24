class TaController < ApplicationController
    
  def ta_index
    @last_id = 0
    if (Question.all.length != 0) 
      @last_id = Question.last.id
    end
    @questions = Question.all
  end

  def update_ta_index_questions
    last_id = params[:last_id]
    @questions = Question.where("id > #{last_id}")
#    @questions = Question.all
    render json: @questions
  end

   
end
