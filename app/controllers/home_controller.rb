class HomeController < ApplicationController
  before_action :authenticate

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      User.find_by(name: username).try(:authenticate, password)
    end
  end

  def index
  end
end
