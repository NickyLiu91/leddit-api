class Api::V1::PostsController < ApplicationController

  before_action :find_post, only: [:show]

  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    render json: @post
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    # if @player.valid?
    #   render json: { player: PlayerSerializer.new(@player) }, status: :created
    # else
    #   render json: { error: 'failed to create user' }, status: :not_acceptable
    # end
    render json: @post
  end

  def edit
    @post = Post.find_by(id: params[:id])
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

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def find_post
    @post = Post.find(params[:id])
  end

end
