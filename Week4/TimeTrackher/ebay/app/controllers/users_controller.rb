class UsersController < ApplicationController

	def index 
		@users_array = User.order("name ASC")
		render 'index'
	end

	def new
		@current_user = User.new
		render 'new'
	end

	def show
		@current_user = User.find_by(id: params[:id])
		unless @current_user
			render "no_user_found"
		render "show"
		end
	end

	def create
		@current_user = User.new(
			:name => params[:user][:name],
			:email => params[:user][:email])
		@current_user.save

		redirect_to "/users"

		# if @my_entry.save
		# 	flash[:notice] = "Project created succesfully"
		# 	redirect_to "/projects/#{@my_project.id}/time_entries"
		# else
		# 	flash[:alert] = "Not saved, try again."
		# 	render 'new'
		# end
	end

	def destroy
		@current_user = User.find params[:user_id]

		@current_user.destroy
		redirect_to 'new'
	end

end
