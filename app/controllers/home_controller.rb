class HomeController < ApplicationController
  def index
    @tweets = Tweet.where(status: false)
    if current_user
      @tweets = @tweets.refine_in(current_user) if current_user.latitude
    end
  end

  def authentication
  end
end
