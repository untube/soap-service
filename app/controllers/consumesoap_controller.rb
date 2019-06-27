class ConsumesoapController < ApplicationController
  def respuesta
    userid = params[:idUser]
    @ubicacion = Ubicaciones.new(userid)
    render json: @ubicacion
  end
end
