class SessionsController < ApplicationController

	require 'omniauth-facebook'
	require 'omniauth'

	def new
		@user = User.find_or_create_from_auth_hash(auth_hash)
		self.current_user = @user
		redirect_to '/'
	end

	def create
		#complete this method
	end

	def destroy
		#complete this method
	end

	protected

	def auth_hash
		request.env['omniauth.auth']
	end
end
