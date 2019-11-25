class UserDoctor::BaseController < ApplicationController
  before_action :authenticate_user_doctor!
end
