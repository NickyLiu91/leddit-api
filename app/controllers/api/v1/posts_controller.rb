class Api::V1::PostsController < ApplicationController

  before_action :find_post, only: [:show]

  def index
    if params[:account_id].present? then
      @account = Account.find(params[:account_id])
      render json: @account.posts
    else
      @posts = Post.all
      render json: @posts
    end
  end

  def show
    render json: @post
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    render json: @post
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @player = Player.find_by(id: params[:id])
    @player.update(player_params)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :account_id)
  end

  def find_post
    @post = Post.find(params[:id])
  end

end
