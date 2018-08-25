class PashirisController < ApplicationController
  before_action :authenticate_user!
  def new
    @tweet = Tweet.last
  end
  def create
    @tweet = Tweet.find(params[:tweet_id])
    @pashiri = @tweet.build_pashiri(user: current_user)
    if @pashiri.save
      #redirect to index
    end
  end
end
