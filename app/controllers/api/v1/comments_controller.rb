class Api::V1::CommentsController < ApplicationController

  before_action :find_comment, only: [:show]

  def index
    @comments = Comment.all
    render json: @comments
  end

  def show
    render json: @comment
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    render json: @comment
  end

  def edit
    @comment = Comment.find_by(id: params[:id])
  end

  def update
    @comment = Comment.find_by(id: params[:id])
    @comment.update(comment_params)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :account_id, :post_id)
  end

  def find_comment
    @comment = Comment.find(params[:id])
  end

end
