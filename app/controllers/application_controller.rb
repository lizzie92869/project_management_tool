class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
  	@clients = Client.all
  	@projects = Project.all
  	@team_mates = TeamMate.all
  	@contacts = Contact.all
  	render :home
  end

end
