class Api::V1::RepliesController < ApplicationController

  before_action :find_reply, only: [:show]

  def index
    @replies = Reply.all
    render json: @replies
  end

  def show
    render json: @reply
  end

  def new
    @reply = Reply.new
  end

  def create
    @reply = Reply.create(reply_params)
    render json: @reply
  end

  def edit
    @reply = Reply.find_by(id: params[:id])
  end

  def update
    @reply = Reply.find_by(id: params[:id])
    @reply.update(reply_params)
  end

  private

  def reply_params
    params.require(:reply).permit(:content, :account_id, :comment_id)
  end

  def find_reply
    @reply = Reply.find(params[:id])
  end

end
