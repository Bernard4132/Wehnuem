class StaticPagesController < ApplicationController

def home
	if signed_in?
		@usersprojects = current_user.projects.all
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
end

def contact
end

def faqs
end

def terms
end

end