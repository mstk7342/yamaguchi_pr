class TweetsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]


  def index
    @tweets = Tweet.all
  end
  
  def new
    @tweets = Tweet.new
  end

  def show
    @tweets = Tweet.find(params[:id])
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def create
    @tweets = Tweet.new(tweet_params)
    if @tweets.valid?
      @tweets.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:name, :image, :category_id, :city_id, :text).merge(user_id: current_user.id)
  end

    
  def  set_tweet
    @tweet = Tweet.find(params[:id])
  end

end
