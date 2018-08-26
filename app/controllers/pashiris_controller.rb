class PashirisController < ApplicationController
  before_action :authenticate_user!
  def new
    @tweet = Tweet.last
  end
  def create
    @tweet = Tweet.find(params[:tweet_id])
    @tweet.update_attributes(status: true)
    @pashiri = @tweet.build_pashiri(user_id: current_user.id)
    if @pashiri.save
      redirect_to current_user
    end
  end
end
