class Api::V1::CommentsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]
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
    render json: @comment
  end

  def destroy
   @comment = Comment.find_by(id: params[:id])
   @comment.destroy
 end

  private

  def comment_params
    params.require(:comment).permit(:content, :account_id, :post_id, :parent_id, :deleted, :edited)
  end

  def find_comment
    @comment = Comment.find(params[:id])
  end

end
