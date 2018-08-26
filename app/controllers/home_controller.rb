class HomeController < ApplicationController
  def index
    @tweets = Tweet.where(status: false)
    @tweets = @tweets.refine_in(current_user) if current_user.latitude
  end

  def authentication
  end
end
