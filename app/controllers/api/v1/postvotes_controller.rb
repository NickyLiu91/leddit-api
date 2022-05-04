class Api::V1::PostvotesController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]
  before_action :find_postvote, only: [:show, :destroy]

  def index
    @postvotes = Postvote.all
    render json: @postvotes
  end

  def show
    render json: @postvote
  end

  def new
    @postvote = Postvote.new
  end

  def create
    @postvote = Postvote.create(postvote_params)
    render json: @postvote
  end

  def edit
    @postvote = Postvote.find_by(id: params[:id])
  end

  def update
    @postvote = Postvote.find_by(id: params[:id])
    @postvote.update(postvote_params)
    render json: @postvote
  end

  def destroy
    @postvote.destroy
    @postvotes = Postvote.all
    render json: @postvotes
  end

  private

  def postvote_params
    params.require(:postvote).permit(:account_id, :post_id, :like)
  end

  def find_postvote
    @postvote = Postvote.find(params[:id])
  end

end
