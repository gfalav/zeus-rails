class ClienteWebsController < ApplicationController
  before_action :set_cliente_web, only: [:show, :edit, :update, :destroy]

  # GET /cliente_webs
  # GET /cliente_webs.json
  def index
    @cliente_webs = ClienteWeb.all
  end

  # GET /cliente_webs/1
  # GET /cliente_webs/1.json
  def show
  end

  # GET /cliente_webs/new
  def new
    @cliente_web = ClienteWeb.new
  end

  # GET /cliente_webs/1/edit
  def edit
  end

  # POST /cliente_webs
  # POST /cliente_webs.json
  def create
    @cliente_web = ClienteWeb.new(cliente_web_params)

    respond_to do |format|
      if @cliente_web.save
        format.html { redirect_to @cliente_web, notice: 'Cliente web was successfully created.' }
        format.json { render :show, status: :created, location: @cliente_web }
      else
        format.html { render :new }
        format.json { render json: @cliente_web.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cliente_webs/1
  # PATCH/PUT /cliente_webs/1.json
  def update
    respond_to do |format|
      if @cliente_web.update(cliente_web_params)
        format.html { redirect_to @cliente_web, notice: 'Cliente web was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliente_web }
      else
        format.html { render :edit }
        format.json { render json: @cliente_web.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cliente_webs/1
  # DELETE /cliente_webs/1.json
  def destroy
    @cliente_web.destroy
    respond_to do |format|
      format.html { redirect_to cliente_webs_url, notice: 'Cliente web was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente_web
      @cliente_web = ClienteWeb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_web_params
      params.require(:cliente_web).permit(:cliente_id, :web, :tipoweb_id)
    end
end
