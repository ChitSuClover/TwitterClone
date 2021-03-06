class PostsController < ApplicationController
  before_action :set_post, only:[:edit, :update, :destroy, :show]
  def index
    @posts=Post.all
  end
  def new
    @post=Post.new
  end
  def create
    if params[:back]
      @post=Post.new(post_params)
      render :new
    else
      @post=Post.create(post_params)
      if @post.save
        redirect_to posts_path
      else
        render :new
      end
    end
  end
  def edit
  end
  def update
    if
      @post.update(post_params)
      redirect_to posts_path, notice: "メッセージを編集しました！"
    else
      render :edit
    end
  end
  def destroy
    @post.destroy
    redirect_to posts_path, notice: "メッセージを削除しました！"
  end
  def confirm
    @post=Post.new(post_params)
    render :new if @post.invalid?
  end
  private
  def post_params
    params.require(:post).permit(:content)
  end
  def set_post
      @post=Post.find(params[:id])
  end
end
