class AdminController < ApplicationController
  before_action :authenticate_user!, :redirect_unless_admin

  def index

  end

  private
  def redirect_unless_admin
    if current_user.try(:role) != "Administrador"
      flash[:alert] = "Solo los administradores pueden entrar ahí"
      redirect_to root_path
    end
  end
end