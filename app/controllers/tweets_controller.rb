class TweetsController < ApplicationController


  def index
    @tweets = Tweet.all.order("id DESC")
    if params[:search] == nil
      @tweets = Tweet.all
    elsif params[:search] == ""
      @tweets = Tweet.all
    else
      #部分検索
      @tweets = Tweet.where("city LIKE ? ",'%' + params[:search] + '%').or(Tweet.where("country LIKE ? ", "%" + params[:search] + "%")).or(Tweet.where("japanese LIKE ? ", "%" + params[:search] + "%")).or(Tweet.where("english LIKE ? ", "%" + params[:search] + "%")).or(Tweet.where("local LIKE ? ", "%" + params[:search] + "%"))
    end
  end


# 新しいツイートの投稿
  def new
    @tweet = Tweet.new

  end

# 新しいツイート保存
  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user_id = current_user.id
    @tweet.save

    # 新しいTweetの保存に成功した場合
    if @tweet.save
      redirect_to action: "index"
    else
      redirect_to action: "new"
    end
  end

  # ツイートの詳細を表示
  def show
    @tweet = Tweet.find(params[:id])


  end
# ツイートの編集
  def edit
    @tweet = Tweet.find(params[:id])

  end

  # 編集したツイートの保存
  def update
    @tweet = Tweet.find(params[:id])

    if @tweet.update(tweet_params)
      redirect_to :action => "index"
    else
      redirect_to :action => "edit"
    end

  end

  # ツイートの削除

  def destroy
    Tweet.find(params[:id]).destroy
    redirect_to action: "index"

  end

  private
  # セキュリティのため、許可した:bodyというデータだけ取ってくるようにする

  def tweet_params
    params.require(:tweet).permit(:body,:img,:tweet_title,:place,:city,:country,:japanese,:english,:local)

  end
  def tweets_params
    params.require(:tweets).permit(:body,:img,:tweet_title,:place,:city,:country,:japanese,:english,:local)

  end


end
