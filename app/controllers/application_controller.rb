class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
  	@clients = Client.all
  	@projects = Project.all
  	@team_mates = TeamMate.all
  	@contacts = Contact.all
  	@contact_companies = @contacts.select(:company).map(&:company).uniq

  	render :home
  end

 #  def contact_companies
	# 	@contact_companies = []
	# 	@contacts.each do |contact|
	# 		if @contact_companies.exclude?(contact.company)
	# 		contact_companies.push(contact.company)
	# 		end
	# 	end
	# 	return @contact_companies	
	# end

end
