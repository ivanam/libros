class LibrosController < ApplicationController
before_action :set_libro, only: [:show, :update, :destroy]
#GET /libros
def index  
    @libros = Libro.all
    render json: {status: 'SUCCESS', message: 'muestro todos los libros', data: @libros}, status: :ok
end# GET /libros/1

def show
	@libro = Libro.find(params[:id])
	render json: {status: 'SUCCESS', message: 'muestro el libro', data: @libro}, status: :ok

end

def create  
    @libro = Libro.new(libro_params)  
    if @libro.save    
		render json: {status: 'SUCCESS', message: 'libro creado con exito!', data: @libro}, status: :ok
    else    
		render json: {status: 'ERROR', message: 'libro no guardado', data: @libro.errors}, status: :unprocessable_entity
    end
end

def update  
    if @libro.update(libro_params)    
		render json: {status: 'SUCCESS', message: 'libro modificado con éxito', data: @libro}, status: :ok
    else    
		render json: {status: 'ERROR', message: 'libro no modificado', data: @libro.errors}, status: :unprocessable_entity
    end
end 
def destroy  
    @libro.destroy
    render json: {status: 'SUCCESS', message: 'libro eliminado', data: @libro}, status: :ok

end

private 
    def set_libro    
      @libro = Libro.find(params[:id])  
    end  
    def libro_params    
      params.require(:libro).permit(:titulo, :autor, :leido)  
    end
end
