class OfficesController < ApplicationController
  def new
  end
  
  def index
    @offices = Office.all.page(params[:page]).per(10)
  end

  def create
  end
  
  def search
     @offices = Office.search(params[:search]).page(params[:page]).per(10)
     respond_to do |format|
       format.js
     end
  end
  
  
end
