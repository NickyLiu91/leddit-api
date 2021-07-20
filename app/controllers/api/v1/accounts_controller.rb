class Api::V1::AccountsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index, :show]
  before_action :find_account, only: [:show]

  def index
    @accounts= Account.all
    render json: @accounts
  end

  def show
    render json: @account
  end

  def profile
    render json: { account: AccountSerializer.new(current_account) }, status: :accepted
  end

  def create
    @account = Account.create(account_params)
    # puts account_params
    if @account.valid?
      @token = encode_token(account_id: @account.id)
      render json: { account: AccountSerializer.new(@account), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create account' }, status: :not_acceptable
    end
  end

  private

  def account_params
    params.permit(:name, :password)
  end

  def find_account
    @account = Account.find(params[:id])
  end


end
