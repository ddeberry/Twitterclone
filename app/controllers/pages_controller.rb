class PagesController < ApplicationController
  
  def index
  end

  def home
  end

  def profile
    #grab username from URL as ID
    if (User.find_by_username params[:id])
    @username = params[:id]
    
    #rediret to index w notice 
    else redirect_to root_path, :notice => "Sorry, that user is not in Glitter world!"
    
    end

  end
    
end

  def explore
  end
