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
        GameMailer.with( game: game ).game_result.deliver_later unless game.email.empty?
        render turbo_stream: [
          turbo_stream.replace("game", 
            partial: "finish_game", 
            locals: { game: @game_answer.game })
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
      puts "#{@game_answer.errors.messages}"
      render :new, status: :unprocessable_entity
    end
  end

  private 
  def game_answer_params
    params.require(:game_answer).permit(:game_id, :answer_id, :question_id)
  end
end