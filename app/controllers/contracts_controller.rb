class ContractsController < ApplicationController
  before_action :set_contract, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  rescue_from ActiveRecord::RecordNotFound do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to main_app.contracts_path, notice: exception.message }
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end

  # GET /contracts
  # GET /contracts.json
  def index
    if current_user.admin?
      @contracts  = Contract.all 
    else 
      @contracts = Contract.where([ "user_id = ?", current_user.id ])
    end
    @calendar_contracts = @contracts
  
  end

  # GET /contracts/1
  # GET /contracts/1.json
  def show
  end

  # GET /contracts/new
  def new
    @contract = Contract.new
    @contract.service = Service.find(params.fetch(:service_id))
    
  end

  # GET /contracts/1/edit
  def edit
  end

  # POST /contracts
  # POST /contracts.json
  def create
    @contract = Contract.new(contract_params)
    @contract.user = current_user
    respond_to do |format|
      if @contract.save
        payment = Payment.new
        payment.contract = @contract
        payment.save!
        format.html { redirect_to @contract, notice: 'Contract was successfully created.' }
        format.json { render :show, status: :created, location: @contract }
      else
        format.html { render :new }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contracts/1
  # PATCH/PUT /contracts/1.json
  def update
    respond_to do |format|
      if @contract.update(contract_params)
        format.html { redirect_to @contract, notice: 'Contract was successfully updated.' }
        format.json { render :show, status: :ok, location: @contract }
      else
        format.html { render :edit }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contracts/1
  # DELETE /contracts/1.json
  def destroy
    @contract.destroy
    respond_to do |format|
      format.html { redirect_to contracts_url, notice: 'Contract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract
      @contract = Contract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_params
      params.require(:contract).permit(:start_time, :completed, :observations, :price, :recurring, :user_id, :payment_id, :service_id)
    end
end
