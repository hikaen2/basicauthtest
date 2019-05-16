class HomeController < ApplicationController
  before_action :authenticate

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      user = User.where(name:username).first
      user.authenticate(password) if user
    end
  end

  def index
  end
end
