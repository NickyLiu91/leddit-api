class Api::V1::AccountsController < ApplicationController

  before_action :find_account, only: [:show]
  skip_before_action :authorized, only: %i[create]

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
    if @account
      @token = encode_token(user_id: @user.id)
      render json: { account: AccountSerializer.new(@account), jwt: @token }, status: :created
      console.log(@token)
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def edit
    @account = Account.find_by(id: params[:id])
  end

  def update
    @player = Player.find_by(id: params[:id])
    @player.update(player_params)
  end

  private

  def account_params
    params.permit(:name, :password)
  end

  def find_account
    @account = Account.find(params[:id])
  end

end
