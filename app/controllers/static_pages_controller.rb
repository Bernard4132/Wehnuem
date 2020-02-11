class StaticPagesController < ApplicationController

def home
	if signed_in?
		@usersprojects = current_user.projects.all
	end
end

def dashboard
	if signed_in?
		@allprojects = Project.all
		@allusers = User.all
	end
end

def about	
end

def vision	
end

def twobedroom
end

def threebedroom
end

def fourbedroom
end

def apply
	@wehnlead =  Wehnlead.new
end

def contact
end

def faqs
end

def terms
end

def clientsland
    @lead = Lead.new
end

end