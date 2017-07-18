class ArticulosController < ApplicationController
  def index
    @articulos = Articulo.all
  end

  def new(*args)
    @articulo = Articulo.new
  end

  def show(*args)
    @articulo = Articulo.find(params[:id])
  end

  def create(*args)

    puts "Ejecutando create..!"
    #render plain: params[:articulo].inspect
    @articulo = Articulo.new(articulo_params)
    if @articulo.save
     redirect_to @articulo
    else
      render 'new'
    end

    #redirect_to @articulo

  end

  private
    def articulo_params(*args)
      params.require(:articulo).permit(:titular, :contenido)
    end

end
