class TaController < ApplicationController
    
  def ta_index
      @questions = Question.all
  end

   
end
