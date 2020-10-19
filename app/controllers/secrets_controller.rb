class SecretsController < ApplicationController
	before_action :require_login, only: [:index]

	def index
	end

	def show
		redirect_to '/' unless current_user
	end
	
	private

	def require_login
		return head(:forbidden) unless session.include?(:name)
	end
end
