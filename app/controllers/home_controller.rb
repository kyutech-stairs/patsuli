class HomeController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def authentication
  end
end
