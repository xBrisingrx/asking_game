class GameAnswersController < ApplicationController
  skip_before_action :no_login, only: [:new, :create]
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
      if cant_answers >= 5
        # juego terminado
        game = @game_answer.game
        game.update(completed:true)
        aprobado = (game.correct_answers > 3) ? "aprobado" : "negativo"
        if game.correct_answers > 3
          flash.now[:notice] = "Felicitaciones aprobaste!."
        else
          flash.now[:alert] = "Tenes que estudiar más."
        end
        # GameMailer.with( game: game ).game_result.deliver_later unless game.email.empty?
        render turbo_stream: [
          turbo_stream.replace("game", 
            partial: "finish_game", 
            locals: { game: @game_answer.game, aprobado:  }),
            turbo_stream.replace("notice", partial: "layouts/flash")
        ]
      else
        question = @game_answer.question_not_used
        submit_button = (cant_answers == 4) ? 'Terminar' : 'Siguiente'
        render turbo_stream: [
          turbo_stream.replace("game", partial: "new", 
            locals: { question: question,
              game_id: @game_answer.game_id, 
              game_answer: GameAnswer.new,
              submit_button: submit_button})
        ]
      end
    else 
      question = Question.select(:id, :question, :category_id).find @game_answer.question_id
      render turbo_stream: [
        turbo_stream.replace("game", 
          partial: "new", 
          locals: { question: question, 
            game_answer: @game_answer,
            game_id: @game_answer.game_id,
            submit_button: "Siguiente" }
        ), status: :unprocessable_entity
      ]
    end
  end

  private 
  def game_answer_params
    params.require(:game_answer).permit(:game_id, :answer_id, :question_id)
  end
end