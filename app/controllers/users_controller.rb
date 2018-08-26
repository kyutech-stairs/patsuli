class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show 
    @user = User.find(params[:id])
    @pashiri_tweets = Tweet.where(id: @user.pashiris.map(&:tweet_id))
    @tweets = @user.tweets.order("created_at DESC")
  end
  
  
  
  
  
end