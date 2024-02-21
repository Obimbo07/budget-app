class SplashController < ApplicationController
  def index
    @user = User.all
  end
end
