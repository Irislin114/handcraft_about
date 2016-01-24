class PostsController < ApplicationController

  before_action :find_post, only:[:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
      # 成功
      # 一次性訊息
      flash[:notice] = "成功送出！"
      # 轉址
      # 回到Post頁面
      redirect_to posts_path
      # redirect_to posts_path
  end

  def edit
    # @post = Post.find_by(id: params[:id])
    # redirect_to posts_path unless @post

    # if not @post
    # redirect_to posts_path
    # end
  end

  def show

  end

  def update
  end

  def destroy

  end

  #Strong Parameter
  private   #只在此類別使用
  def post_params
    params.require(:post).permit(:title, :content)#resource
  end

  def find_post
    @post = Post.find_by(id: params[:id])
    redirect_to posts_path unless @post
  end

end
