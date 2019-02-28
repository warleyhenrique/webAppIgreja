class KindsController < ApplicationController
    before_action :set_kind, only: [:show, :edit, :destroy, :update]
    
    def index
        @kinds = Kind.all.page(params[:page]).per(10)
    end
    
    def new
        @kind = Kind.new
    end
    
    def show
    end
    
    def edit
    end
   
   
    def create
        @kind = Kind.new(kind_params)
        respond_to do |format|
            if @kind.save
                format.html { redirect_to @kind, notice: 'Tipo de Membro foi criado com sucesso.' }
            else
               format.html {render :new} 
            end
        end
    end
    
    def update
    respond_to do |format|
      if @kind.update(kind_params)
        format.html { redirect_to @kind, notice: 'Membro foi atualizado com sucesso.' }
      else
        format.html { render :edit }
      end
    end
    end
    
    def destroy
        unless  @kind.members.count > 0
            @kind.destroy
            respond_to do |format|
              format.html { redirect_to kinds_url, notice: "Tipo #{@kind.description} foi excluido com sucesso." }
            end
        else
            respond_to do |format|
                format.html { redirect_to kinds_url, notice: "O registro não pode ser excuido, pois existem #{@kind.members.count} membros vinculados a esse Tipo" }
            end
        end
    end
    
    def search
        @kinds = Kind.search(params[:search]).page(params[:page]).per(10)
        respond_to do |format|
            format.js
        end
    end
    
    private
        def kind_params
            params.require(:kind).permit(:description,:rmk)
        end
        
        def set_kind
            @kind = Kind.find(params[:id])
        end
end
