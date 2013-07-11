class WelcomeController < ApplicationController
  def index
  	session[:name] = []
  end
end
