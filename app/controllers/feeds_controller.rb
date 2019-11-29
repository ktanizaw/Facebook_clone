class FeedsController < ApplicationController
  before_action :set_feed, only: [:show, :edit, :update, :destroy ]
  before_action :login_required

  def index
    @feeds = Feed.all
  end

  def show
    @comments = @feed.comments
    @comment = @feed.comments.build
  end

  def new
    @feed = Feed.new
  end

  def edit
  end

  def create
    if params[:back]
      render :new
    else
    @feed = current_user.feeds.build(feed_params)
      if @feed.save
        redirect_to feeds_path, notice: "投稿しました！"
      else
        render 'new'
      end
    end
  end

  def confirm
    @feed = Feed.new(feed_params)
  end

  def update
    respond_to do |format|
      if @feed.update(feed_params)
        format.html { redirect_to @feed, notice: '更新しました！' }
        format.json { render :show, status: :ok, location: @feed }
      else
        format.html { render :edit }
        format.json { render json: @feed.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @feed.destroy
    respond_to do |format|
      format.html { redirect_to feeds_url, notice: '削除しました！' }
      format.json { head :no_content }
    end
  end

  private

  def set_feed
  @feed = Feed.find(params[:id])
  end

  def feed_params
  params.require(:feed).permit(:image, :title, :image_cache)
  end

  def login_required
    redirect_to new_session_path unless current_user
  end

end
