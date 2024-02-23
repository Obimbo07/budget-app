class ApplicationController < ActionController::Base
  before_action :authenticate_user!, unless: :splash_screen?

  protect_from_forgery with: :exception

  private

  def splash_screen?
    params[:controller] == 'home' && params[:action] == 'index'
  end
end
