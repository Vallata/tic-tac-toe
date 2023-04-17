class Game < ApplicationRecord
  belongs_to :user
  belongs_to :computer

  def new
    @game = Game.new
    @game.user = current_user
  end

end
