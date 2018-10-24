class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
  	@clients = Client.all
  	@projects = Project.all
  	@team_mates = TeamMate.all
  	@team_mates_departments = @team_mates.select(:department).map(&:department).uniq
  	@contacts = Contact.all
  	@contact_companies = @contacts.select(:company).map(&:company).uniq

  	render :home
  end


end
