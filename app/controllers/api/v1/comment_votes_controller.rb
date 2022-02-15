class CommentVotesController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]
  before_action :find_comment, only: [:show]

  def index
    @commentVotes = CommentVote.all
    render json: @commentVotes
  end

  def show
    render json: @commentVote
  end

  def new
    @commentVote = CommentVote.new
  end

  def create
    @commentVote = CommentVote.create(commentVote_params)
    render json: @commentVote
  end

  def edit
    @commentVote = CommentVote.find_by(id: params[:id])
  end

  def update
    @commentVote = CommentVote.find_by(id: params[:id])
    @commentVote.update(commentVote_params)
    render json: @commentVote
  end

  private

  def commentVote_params
    params.require(:comment).permit(:account_id, :comment_id, :like)
  end

  def find_comment
    @commentVote = CommentVote.find(params[:id])
  end
end
