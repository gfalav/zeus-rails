class ClienteEmailsController < ApplicationController
  before_action :set_cliente_email, only: [:show, :edit, :update, :destroy]

  # GET /cliente_emails
  # GET /cliente_emails.json
  def index
    @cliente_emails = ClienteEmail.all
  end

  # GET /cliente_emails/1
  # GET /cliente_emails/1.json
  def show
  end

  # GET /cliente_emails/new
  def new
    @cliente_email = ClienteEmail.new
  end

  # GET /cliente_emails/1/edit
  def edit
  end

  # POST /cliente_emails
  # POST /cliente_emails.json
  def create
    @cliente_email = ClienteEmail.new(cliente_email_params)

    respond_to do |format|
      if @cliente_email.save
        format.html { redirect_to @cliente_email, notice: 'Cliente email was successfully created.' }
        format.json { render :show, status: :created, location: @cliente_email }
      else
        format.html { render :new }
        format.json { render json: @cliente_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cliente_emails/1
  # PATCH/PUT /cliente_emails/1.json
  def update
    respond_to do |format|
      if @cliente_email.update(cliente_email_params)
        format.html { redirect_to @cliente_email, notice: 'Cliente email was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliente_email }
      else
        format.html { render :edit }
        format.json { render json: @cliente_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cliente_emails/1
  # DELETE /cliente_emails/1.json
  def destroy
    @cliente_email.destroy
    respond_to do |format|
      format.html { redirect_to cliente_emails_url, notice: 'Cliente email was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente_email
      @cliente_email = ClienteEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_email_params
      params.require(:cliente_email).permit(:cliente_id, :email, :tipoemail_id)
    end
end
