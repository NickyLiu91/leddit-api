# class Api::V1::AuthController < ApplicationController
#   skip_before_action :authorized, only: %i[create]
#
#   def create
#     @account = Account.find_by(name: account_login_params[:name])
#     #Account#authenticate comes from BCrypt
#     if @account && @account.authenticate(account_login_params[:password])
#       # encode token comes from ApplicationController
#       token = encode_token({ account_id: @account.id })
#       render json: { account: AccountSerializer.new(@account), jwt: token }, status: :accepted
#     else
#       render json: { message: 'Invalid accountname or password' }, status: :unauthorized
#     end
#   end
#
#   private
#
#   def account_login_params
#     # params { account: {accountname: 'Chandler Bing', password: 'hi' } }
#     params.require(:account).permit(:name, :password)
#   end
# end
