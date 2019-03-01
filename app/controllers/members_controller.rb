class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]
  before_action :kinds_for_select, only: [:new, :edit, :update, :create]
  
  # GET /members
  def index
    @members = Member.all.page(params[:page]).per(10)
  end
  
  def show
  end
  
  def new
    @member = Member.new
  end
  
  def edit
  end
  
  def create
    @member = Member.new(member_params)
    @member.first_name = primeiro_nome(@member.full_name)
    respond_to do |format|
        if @member.save
          format.html { redirect_to @member, notice: 'Membro foi criado com sucesso.' }
        else
          format.html { render :new }
        end
      end
  end
  
  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to @member, notice: 'Membro foi atualizado com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end
  
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url, notice: "Membro #{@member.first_name} foi excluido com sucesso." }
    end
  end
  
  def search
     @members = Member.search(params[:search]).page(params[:page]).per(10)
     respond_to do |format|
       format.js
     end
  end
  
  private
    
    def set_member
      @member = Member.find(params[:id])
    end
    
    def member_params
      params.require(:member).permit(:first_name,:full_name,:father_name,:monther_name,:sex,
      :birthday,:marital_status,:email,:schooling,:profession,:cpf,:rg,:rg_emitter,:photo,:kind_id,:search)
    end
    
    #Para usar nas selecoes de tipos de contatos
    def kinds_for_select
      @kinds_for_select = Kind.all
    end
    
    def primeiro_nome(full_name)
        array_nome = full_name.split(' ')
        first_name = array_nome[0]
    end
      
  
end
