class PostVotesController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]
  before_action :find_post, only: [:show]

  def index
    @postVotes = PostVotes.all
    render json: @postVotes
  end

  def show
    render json: @postVote
  end

  def new
    @postVotes = PostVotes.new
  end

  def create
    @postVotes = PostVotes.create(postVotes_params)
    render json: @postVotes
  end

  def edit
    @postVotes = PostVotes.find_by(id: params[:id])
  end

  def update
    @postVotes = PostVotes.find_by(id: params[:id])
    @postVotes.update(postVotes_params)
    render json: @postVotes
  end

  private

  def postVotes_params
    params.require(:post).permit(:account_id, :post_id, :like)
  end

  def find_post
    @postVote = PostVote.find(params[:id])
  end

end
