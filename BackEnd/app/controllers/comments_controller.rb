class CommentsController < ApplicationController
    def index
        comentarios = Comment.all
        render json: comentarios, status: 200  
    end

    def create
    comment = Comment.create(
      nombre: params[:nombre],
      correo: params[:correo],
      edad: params[:edad]
  )
    render json: comment, status: 201
    end
end
