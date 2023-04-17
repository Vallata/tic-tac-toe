class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    @user = User.find(params[:user_id])
    @game = Game.new(game_params)
    @game.user = @user
    if @game.save
      redirect_to new_game_path
    else
      flash[:alert] = "Something went wrong!"
      render :new, status: :unprocessable_entity
    end
  end

  # def move(board, index, player)
  #   board[index] = player
  # end

  private

  # game_param

  def game_params
    params.required(:game).permit(:user_id)
  end
end
