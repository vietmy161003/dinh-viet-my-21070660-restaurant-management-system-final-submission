class EWalletsController < ApplicationController
  before_action :set_e_wallet, only: %i[ show edit update destroy ]

  # GET /e_wallets or /e_wallets.json
  def index
    @e_wallets = EWallet.all
  end

  # GET /e_wallets/1 or /e_wallets/1.json
  def show
  end

  # GET /e_wallets/new
  def new
    @e_wallet = EWallet.new
  end

  # GET /e_wallets/1/edit
  def edit
  end

  # POST /e_wallets or /e_wallets.json
  def create
    @e_wallet = EWallet.new(e_wallet_params)

    respond_to do |format|
      if @e_wallet.save
        format.html { redirect_to e_wallet_url(@e_wallet), notice: "E wallet was successfully created." }
        format.json { render :show, status: :created, location: @e_wallet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @e_wallet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e_wallets/1 or /e_wallets/1.json
  def update
    respond_to do |format|
      if @e_wallet.update(e_wallet_params)
        format.html { redirect_to e_wallet_url(@e_wallet), notice: "E wallet was successfully updated." }
        format.json { render :show, status: :ok, location: @e_wallet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @e_wallet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e_wallets/1 or /e_wallets/1.json
  def destroy
    @e_wallet.destroy

    respond_to do |format|
      format.html { redirect_to e_wallets_url, notice: "E wallet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e_wallet
      @e_wallet = EWallet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def e_wallet_params
      params.require(:e_wallet).permit(:customer, :customer_name, :balance)
    end
end
