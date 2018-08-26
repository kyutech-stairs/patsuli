class SeekController < ApplicationController
  def index
    @tweets = Tweet.refine_in(current_user)
    # パラメータとして名前か性別を受け取っている場合は絞って検索する
    if params[:wishing].present?
      @tweets = @tweets.get_by_wishing params[:wishing]
    end
  end
end
