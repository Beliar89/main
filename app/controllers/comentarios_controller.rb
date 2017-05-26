class ComentariosController < ApplicationController
  def index
		@comentarios = Comentario.all
	end

	def show
		@comentario = Comentario.find(params[:id])
	
	end

 	def new
 		@comentario = Comentario.new
	end

	def create
		@comentario = Comentario.new(comentario_params)
		if @comentario.save
		   redirect_to comentarios_path, :notice => "Se ha guardado el comentario!"
		else
		end
		render "new"
	end

	def edit
		@comentario = Comentario.find(params[:id])
	end

	def update
		@comentario = Comentario.find(params[:id])
 		if @comentario.update_attributes(comentario_params)
			redirect_to comentarios_path, notice: "éxito!"
		else
		end
		render "edit"

	end

	def destroy
		@comentario = Comentario.find(params[:id])
		@comentario.destroy
		redirect_to comentarios_path, :notice => "Borrado"
	end
private
	def comentario_params
		params.require(:comentario).permit(:name, :year, :stars, :main_actor)
	end
end

