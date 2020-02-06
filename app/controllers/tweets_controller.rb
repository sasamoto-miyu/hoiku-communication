class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweets = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
    redirect_to root_path
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweets_params)
    redirect_to root_path
  end

  private

  def tweet_params
    params.permit(:title, :text, :image)
  end

  def tweets_params
    params.require(:tweet).permit(:title, :text, :image)
  end

end
