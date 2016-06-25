class ClienteTelefonosController < ApplicationController
  before_action :set_cliente_telefono, only: [:show, :edit, :update, :destroy]

  # GET /cliente_telefonos
  # GET /cliente_telefonos.json
  def index
    @cliente_telefonos = ClienteTelefono.all
  end

  # GET /cliente_telefonos/1
  # GET /cliente_telefonos/1.json
  def show
  end

  # GET /cliente_telefonos/new
  def new
    @cliente_telefono = ClienteTelefono.new
  end

  # GET /cliente_telefonos/1/edit
  def edit
  end

  # POST /cliente_telefonos
  # POST /cliente_telefonos.json
  def create
    @cliente_telefono = ClienteTelefono.new(cliente_telefono_params)

    respond_to do |format|
      if @cliente_telefono.save
        format.html { redirect_to @cliente_telefono, notice: 'Cliente telefono was successfully created.' }
        format.json { render :show, status: :created, location: @cliente_telefono }
      else
        format.html { render :new }
        format.json { render json: @cliente_telefono.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cliente_telefonos/1
  # PATCH/PUT /cliente_telefonos/1.json
  def update
    respond_to do |format|
      if @cliente_telefono.update(cliente_telefono_params)
        format.html { redirect_to @cliente_telefono, notice: 'Cliente telefono was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliente_telefono }
      else
        format.html { render :edit }
        format.json { render json: @cliente_telefono.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cliente_telefonos/1
  # DELETE /cliente_telefonos/1.json
  def destroy
    @cliente_telefono.destroy
    respond_to do |format|
      format.html { redirect_to cliente_telefonos_url, notice: 'Cliente telefono was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente_telefono
      @cliente_telefono = ClienteTelefono.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_telefono_params
      params.require(:cliente_telefono).permit(:cliente_id, :telefono, :tipotel_id)
    end
end
