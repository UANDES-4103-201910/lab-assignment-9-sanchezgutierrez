class SessionsController < ApplicationController

	require 'omniauth-facebook'
	require 'omniauth'

	def new
		@user = User.where(auth_hash: auth_hash).first_or_create
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
