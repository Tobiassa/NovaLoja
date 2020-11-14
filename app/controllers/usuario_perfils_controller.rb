class UsuarioPerfilsController < ApplicationController
  before_action :set_usuario_perfil, only: [:show, :edit, :update, :destroy]

  # GET /usuario_perfils
  # GET /usuario_perfils.json
  def index
    @usuario_perfils = UsuarioPerfil.all
  end

  # GET /usuario_perfils/1
  # GET /usuario_perfils/1.json
  def show
  end

  # GET /usuario_perfils/new
  def new
    @usuario_perfil = UsuarioPerfil.new
  end

  # GET /usuario_perfils/1/edit
  def edit
  end

  # POST /usuario_perfils
  # POST /usuario_perfils.json
  def create
    @usuario_perfil = UsuarioPerfil.new(usuario_perfil_params)

    respond_to do |format|
      if @usuario_perfil.save
        format.html { redirect_to @usuario_perfil, notice: 'Usuario perfil was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_perfil }
      else
        format.html { render :new }
        format.json { render json: @usuario_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_perfils/1
  # PATCH/PUT /usuario_perfils/1.json
  def update
    respond_to do |format|
      if @usuario_perfil.update(usuario_perfil_params)
        format.html { redirect_to @usuario_perfil, notice: 'Usuario perfil was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_perfil }
      else
        format.html { render :edit }
        format.json { render json: @usuario_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_perfils/1
  # DELETE /usuario_perfils/1.json
  def destroy
    @usuario_perfil.destroy
    respond_to do |format|
      format.html { redirect_to usuario_perfils_url, notice: 'Usuario perfil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_perfil
      @usuario_perfil = UsuarioPerfil.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def usuario_perfil_params
      params.require(:usuario_perfil).permit(:nome)
    end
end
