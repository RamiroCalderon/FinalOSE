class HomeController < ApplicationController
  before_action :authenticate_user!


  
    def adminouser
  
     if current_user.admin == true  
        redirect_to url_for(:controller => :admin, :action => :index)
        else
       redirect_to url_for(:controller => :welcome, :action => :index)
    end
  end

end
