class GameAnswersController < ApplicationController
  skip_before_action :no_login, only: [:new, :create]
  before_action :set_time_alert, only: %i[ create ]
  
  def new
    @game = Game.new
    @categories = Category.all
    render turbo_stream: [
      turbo_stream.replace("game", partial: "game", locals: {game: @game})
    ]
  end

  def create
    @game_answer = GameAnswer.new(game_answer_params)
    if @game_answer.save
      cant_answers =  @game_answer.count_answers
      if cant_answers >= 10
        # juego terminado
        game = @game_answer.game
        game.update(completed:true)
        aprobado = (game.correct_answers > 7) ? "aprobado" : "negativo"

        case game.correct_answers
        when 10
          flash.now[:success] = "Felicitaciones, excelente puntaje!."
        when 9
          flash.now[:notice] = "Felicitaciones, muy buen puntaje!."
        when 8
          flash.now[:notice] = "Felicitaciones, buen puntaje!."
        when 7
          flash.now[:warning] = "Estuviste cerca."
        when 1..6
          flash.now[:alert] = "Tenes que estudiar más."
        end
        render turbo_stream: [
          turbo_stream.replace("game", 
            partial: "finish_game", 
            locals: { game: @game_answer.game, aprobado:  }),
            turbo_stream.replace("notice", partial: "layouts/flash", locals: { time_alert: @time_alert, effect_alert: @effect_alert })
        ]
      else
        question = @game_answer.question_not_used
        submit_button = (cant_answers == 4) ? 'Terminar' : 'Siguiente'
        render turbo_stream: [
          turbo_stream.replace("game", partial: "new", 
            locals: { question: question,
              game_id: @game_answer.game_id,
              question_was_correct: @game_answer.answer.is_correct, 
              game_answer: GameAnswer.new,
              submit_button: submit_button})
        ]
      end
    else 
      @question = Question.select(:id, :question, :category_id).find @game_answer.question_id
      @submit_button = 'Siguiente'
      @msg_error = "Debe seleccionar una respuesta"
      puts @msg_error.nil?
      render :new, status: :unprocessable_entity
    end
  end

  private 
  def game_answer_params
    params.require(:game_answer).permit(:game_id, :answer_id, :question_id)
  end

  def set_time_alert
    @time_alert = '6'
    @effect_alert = "tada"
  end
end