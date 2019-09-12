class Administration::BaseController < ApplicationController
	before_action :authenticate_user!
	layout "administration"
end

