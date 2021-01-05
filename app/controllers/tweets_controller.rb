class TweetsController < ApplicationController
  def index
  end

  def new
    @tweet = Tweet.new
  end

  def show
  end

  def tweet_params
    params.require(:tweet).permit(:nickname).merge(user_id: current_user.id)
  end
end
