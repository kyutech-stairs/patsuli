class TweetsController < ApplicationController
  before_action :authenticate_user!
  def new
    @tweet = current_user.tweets.build()
  end
  def create
    @tweet = current_user.tweets.build(tweet_params)
    if @tweet.save
      redirect_to  root_path
    else 
      render 'new'
    end
  end

  private
  def tweet_params()
    params.require(:tweet).permit(:wishing, :reward, :count, :latitude, :longitude)
  end
end
