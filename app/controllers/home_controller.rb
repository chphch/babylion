class HomeController < ApplicationController
  before_action :authenticate_user!, only: :treasure
 
  def index
    
  end
  
  def treasure
    
  end
end
