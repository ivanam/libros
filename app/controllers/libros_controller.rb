class LibrosController < ApplicationController
before_action :set_libro, only: [:show, :update, :destroy]
#GET /libros
def index  
    @libros = Libro.all
end# GET /libros/1

def show
end

def create  
    @libro = Libro.new(libro_params)  
    if @libro.save    
      render :show, status: :created, location: @libro  
    else    
      render json: @libro.errors, status: :unprocessable_entity  
    end
end

def update  
    if @libro.update(libro_params)    
       render :show, status: :ok, location: @libro  
    else    
        render json: @libro.errors, status: :unprocessable_entity  
    end
end 
def destroy  
    @libro.destroy
end

private 
    def set_libro    
      @libro = Libro.find(params[:id])  
    end  
    def libro_params    
      params.require(:libro).permit(:titulo, :autor, :leido)  
    end
end
