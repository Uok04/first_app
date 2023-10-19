class PostsController < ApplicationController
  def index #indexアクションを定義
    @posts = Post.all #1番目のレコードを＠postに代入
  end

  def new
  end

  def create
    Post.create(content: params[:content]) #保存
    redirect_to "/posts" #一覧画面を表示
  end

end
