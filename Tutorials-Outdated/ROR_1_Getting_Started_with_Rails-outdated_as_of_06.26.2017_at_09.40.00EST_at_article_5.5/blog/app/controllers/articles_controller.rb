class ArticlesController < ApplicationController
	def new
	end

	# Adding the following to define a create action within the ArticlesController class:
	def create
		# when the form is submitted, the form fields are sent to Rails as parameters.   These parameters can be referenced inside the controller actions, typically to perform a particular task.  To see what they look like, change the create action to:
		render plain: params[:article].inspect
	end
end


