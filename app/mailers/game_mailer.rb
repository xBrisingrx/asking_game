class GameMailer < ApplicationMailer
  default from: ENV['EMAIL']

  def game_result
    @game = params[:game]
    mail(to: params[:email], subject: 'Resultado del juego')
  end
end
