class CommentsController < ApplicationController
  # コメントを保存、投稿するためのアクションです。
  def create
    # Feedをパラメータの値から探し出し,Blogに紐づくcommentsとしてbuildします。
    @feed = Feed.find(params[:feed_id])
    @comment = @feed.comments.build(comment_params)
    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @comment.save
        format.html { redirect_to feed_path(@feed) }
      else
        format.html { redirect_to feed_path(@feed), notice: '投稿できませんでした...' }
      end
    end
  end

  private
  # ストロングパラメーター
  def comment_params
    params.require(:comment).permit(:feed_id, :content)
  end
end
