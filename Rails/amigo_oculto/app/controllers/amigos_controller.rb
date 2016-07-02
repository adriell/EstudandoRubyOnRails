class AmigosController < ApplicationController
	def new
		@amigo = Amigo.new
	end
	def create
		amigo_params = params.require(:amigo).permit(:nome, :email)
		@amigo = Amigo.create amigo_params
		redirect_to '/hello/World'
	end
end
