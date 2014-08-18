class SearchController < ApplicationController

  before_filter :authenticate_user!

  def index
    @search_term = params[:search_term]    
    if gadget = current_user.gadgets.find_by(name: @search_term)
      redirect_to user_gadget_path(current_user, gadget)
    end
    @results = Search.for(current_user, @search_term)    
  end

end
