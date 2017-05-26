class PeliculasController < ApplicationController
  def index
		@peliculas = Pelicula.all
	end

	def show
		@pelicula = Pelicula.find(params[:id])
	
	end

 	def new
 		@pelicula = Pelicula.new
	end

	def create
		@pelicula = Pelicula.new(pelicula_params)
		if @pelicula.save
		   redirect_to peliculas_path, :notice => "Se ha guardado la peli!"
		else
		end
		render "new"
	end

	def edit
		@pelicula = Pelicula.find(params[:id])
	end

	def update
		@pelicula = Pelicula.find(params[:id])
 		if @pelicula.update_attributes(pelicula_params)
			redirect_to peliculas_path, notice: "éxito!"
		else
	    end
	    render "edit"

	end

	def destroy
		@pelicula = Pelicula.find(params[:id])
		@pelicula.destroy
		redirect_to peliculas_path, :notice => "Borrado"
	end
end
private
	def pelicula_params
		params.require(:pelicula).permit(:name, :stars, :main_actor, :year)
	end
end
