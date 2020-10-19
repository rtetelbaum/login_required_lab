class SessionsController < ApplicationController
  def new
	end
	
	def create
		session[:name] = params[:name]
		if session[:name] == nil
			redirect_to '/'
		elsif session[:name].empty?
			redirect_to '/'
		else
			redirect_to '/welcome'
		end
	end

	def destroy
		session.delete :name
		redirect_to '/login'
	end

	def welcome
		@name = session[:name]
	end
end
