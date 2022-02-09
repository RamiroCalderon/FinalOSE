class WelcomeController < ApplicationController
  before_action :authenticate_user! 
before_filter do
redirect_to index unless current_user.admin?
end
 
  def index
    @usuario=current_user
  
    $maistros=Staff.find_by(user_id:@usuario.id)
    $teacher=Staff.find($maistros.id)
    $showgs=Schedule.where(staff_id:$teacher)
  end

  def show
    
    @salon = Group.find(params[:id])
      @stus = List.where(group_id:params[:id])
         end
end
