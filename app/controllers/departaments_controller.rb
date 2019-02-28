class DepartamentsController < ApplicationController
     before_action :set_departament, only: [:show, :edit, :update, :destroy]
  
    
    def index
        @departaments = Departament.all.page(params[:page]).per(10)
    end
    
    def new
        @departament = Departament.new
    end
    
    def search
    end
    
    private
        def set_departament
            @departament = Departament.find([:id])
        end
end
