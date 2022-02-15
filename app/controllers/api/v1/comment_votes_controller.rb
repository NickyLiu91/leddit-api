class CommentVotesController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]
  before_action :find_comment, only: [:show]

  def index
    @commentVotes = CommentVotes.all
    render json: @commentVotes
  end

  def show
    render json: @commentVote
  end

  def new
    @commentVotes = CommentVotes.new
  end

  def create
    @commentVotes = CommentVotes.create(commentVotes_params)
    render json: @commentVotes
  end

  def edit
    @commentVotes = CommentVotes.find_by(id: params[:id])
  end

  def update
    @commentVotes = CommentVotes.find_by(id: params[:id])
    @commentVotes.update(commentVotes_params)
    render json: @commentVotes
  end

  private

  def commentVotes_params
    params.require(:comment).permit(:account_id, :comment_id, :like)
  end

  def find_comment
    @commentVote = CommentVote.find(params[:id])
  end
end
