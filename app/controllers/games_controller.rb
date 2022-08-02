class GamesController < ApplicationController
  skip_before_action :no_login, only: [:index, :new, :create]
  before_action :set_categories, only: [:index, :new, :create]
  def index
    @game = Game.new
  end

  def new
    @game = Game.new
    render turbo_stream: [
      turbo_stream.replace("game", partial: "game", locals: {game: @game})
    ]
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      @question = Question.select(:id, :question, :category_id).where( category_id: @game.category_id ).order("RAND()").first
      render turbo_stream: [
        turbo_stream.replace("game", partial: "game_answers/new", 
          locals: { question: @question, 
            game_id: @game.id, 
            game_answer: GameAnswer.new, 
            submit_button: 'Siguiente'
          })
      ]
    else 
      render :new, status: :unprocessable_entity
    end
  end

  def ranking
    @pagy, @games = pagy( Game.all.order(score: 'DESC', player: "ASC"), items:10 )
  end

  private 
  def set_categories
    @categories = Category.all
  end
  def game_params
    params.require(:game).permit(:player, :category_id, :email, :score)
  end
end