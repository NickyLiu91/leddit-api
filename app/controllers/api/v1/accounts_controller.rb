class Api::V1::AccountsController < ApplicationController

  before_action :find_account, only: [:show]

  def index
    @accounts = Account.all
    render json: @accounts
  end

  def show
    render json: @account
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.create(account_params)
    # if @player.valid?
    #   render json: { player: PlayerSerializer.new(@player) }, status: :created
    # else
    #   render json: { error: 'failed to create user' }, status: :not_acceptable
    # end
    render json: @account
  end

  def edit
    @account = Account.find_by(id: params[:id])
  end

  def update
    @player = Player.find_by(id: params[:id])
    @player.update(player_params)
  end

  # def card_players
  #   @card = Card.find(params[:card_id])
  #   @players = @card
  # end
  #
  # def deck_player
  #   @deck = Deck.find(params[:deck_id])
  #   @player = @deck
  # end

  private

  def account_params
    params.require(:account).permit(:name, :password)
  end

  def find_account
    @account = Account.find(params[:id])
  end

end
