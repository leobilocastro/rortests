module Api
    module V1
        class PrestadorController < ApplicationController
            def index
                @prestadores = Prestador.all()
                render json: @prestadores
            end

            def create
                @prestador = Prestador.new(prestador_params)
  
                if @prestador.save
                  render json: @prestador, status: :created
                else
                  render json: @prestador.errors, status: :unprocessable_entity
                end
            end

            def prestador_param
                params.require(:prestador).permit(:name, :phone, :password)
            end
        end
    end
end