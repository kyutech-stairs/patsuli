class HomeController < ApplicationController
  def index
    @tweets = Tweet.where(status: false)
  end

  def authentication
  end
end
