class PostVotesController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]
  before_action :find_post, only: [:show]

  def index
    @postVotes = PostVote.all
    render json: @postVotes
  end

  def show
    render json: @postVote
  end

  def new
    @postVote = PostVote.new
  end

  def create
    @postVote = PostVote.create(postVote_params)
    render json: @postVote
  end

  def edit
    @postVote = PostVote.find_by(id: params[:id])
  end

  def update
    @postVote = PostVote.find_by(id: params[:id])
    @postVote.update(postVote_params)
    render json: @postVote
  end

  private

  def postVote_params
    params.require(:post).permit(:account_id, :post_id, :like)
  end

  def find_post
    @postVote = PostVote.find(params[:id])
  end

end
