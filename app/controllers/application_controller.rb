class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
  	@clients = Client.all
  	@projects = Project.all
  	render :home
  end

end
