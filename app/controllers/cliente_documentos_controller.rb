class ClienteDocumentosController < ApplicationController
  before_action :set_cliente_documento, only: [:show, :edit, :update, :destroy]

  # GET /cliente_documentos
  # GET /cliente_documentos.json
  def index
    @cliente_documentos = ClienteDocumento.all
  end

  # GET /cliente_documentos/1
  # GET /cliente_documentos/1.json
  def show
  end

  # GET /cliente_documentos/new
  def new
    @cliente_documento = ClienteDocumento.new
  end

  # GET /cliente_documentos/1/edit
  def edit
  end

  # POST /cliente_documentos
  # POST /cliente_documentos.json
  def create
    @cliente_documento = ClienteDocumento.new(cliente_documento_params)

    respond_to do |format|
      if @cliente_documento.save
        format.html { redirect_to @cliente_documento, notice: 'Cliente documento was successfully created.' }
        format.json { render :show, status: :created, location: @cliente_documento }
      else
        format.html { render :new }
        format.json { render json: @cliente_documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cliente_documentos/1
  # PATCH/PUT /cliente_documentos/1.json
  def update
    respond_to do |format|
      if @cliente_documento.update(cliente_documento_params)
        format.html { redirect_to @cliente_documento, notice: 'Cliente documento was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliente_documento }
      else
        format.html { render :edit }
        format.json { render json: @cliente_documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cliente_documentos/1
  # DELETE /cliente_documentos/1.json
  def destroy
    @cliente_documento.destroy
    respond_to do |format|
      format.html { redirect_to cliente_documentos_url, notice: 'Cliente documento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente_documento
      @cliente_documento = ClienteDocumento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_documento_params
      params.require(:cliente_documento).permit(:cliente_id, :documento, :tipodoc_id, :emisordoc_id, :vencimiento, :codseg)
    end
end
