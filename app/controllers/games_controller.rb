class GamesController < ApplicationController
  skip_before_action :no_login, only: [:index, :new, :create]
  before_action :set_categories, only: [:index, :new, :create]
  before_action :set_time_alert, only: %i[ index create update destroy]
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
      @msg_error = "Debes seleccionar una categoría"
      # render :new, status: :unprocessable_entity
      render turbo_stream: [
        turbo_stream.update("game", partial: "form")
      ]
    end
  end

  def ranking_manejo
    @title = "Ranking manejo defensivo"
    @pagy, @games = pagy( Game.completed.manejo.order(score: 'DESC', player: "ASC"), items:10 )
    render :ranking
  end

  def ranking_petroleo
    @title = "Ranking petroleo"
    @pagy, @games = pagy( Game.completed.petroleo.order(score: 'DESC', player: "ASC"), items:10 )
    render :ranking
  end

  private 
  def set_categories
    @categories = Category.all
  end
  def game_params
    params.require(:game).permit(:player, :category_id, :email, :score)
  end

  def set_time_alert
    @time_alert = '3'
  end
end