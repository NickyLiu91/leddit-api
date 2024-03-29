class Api::V1::CommentvotesController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]
  before_action :find_commentvote, only: [:show]

  def index
    @commentvotes = Commentvote.all
    render json: @commentvotes
  end

  def show
    render json: @commentvote
  end

  def new
    @commentvote = Commentvote.new
  end

  def create
    @commentvote = Commentvote.create(commentvote_params)
    render json: @commentvote
  end

  def edit
    @commentvote = Commentvote.find_by(id: params[:id])
  end

  def update
    @commentvote = Commentvote.find_by(id: params[:id])
    @commentvote.update(commentvote_params)
    render json: @commentvote
  end

  private

  def commentvote_params
    params.require(:commentvote).permit(:account_id, :comment_id, :like)
  end

  def find_commentvote
    @commentvote = Commentvote.find(params[:id])
  end
end
