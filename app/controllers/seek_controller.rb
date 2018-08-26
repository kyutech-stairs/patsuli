class SeekController < ApplicationController
  def new

  end
  def index
    @tweets = Tweet.all
    # パラメータとして名前か性別を受け取っている場合は絞って検索する
    @tweets = @tweets.get_by_wishing params[:wishing] if params[:wishing]
    @tweets = @tweets.refine_in(current_user) if current_user.latitude
  end
end
