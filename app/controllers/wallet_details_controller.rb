class WalletDetailsController < ApplicationController
  before_action :set_wallet_detail, only: %i[ show edit update destroy ]

  # GET /wallet_details or /wallet_details.json
  def index
    @wallet_details = WalletDetail.all
  end

  # GET /wallet_details/1 or /wallet_details/1.json
  def show
  end

  # GET /wallet_details/new
  def new
    @wallet_detail = WalletDetail.new
  end

  # GET /wallet_details/1/edit
  def edit
  end

  # POST /wallet_details or /wallet_details.json
  def create
    @wallet_detail = WalletDetail.new(wallet_detail_params)

    respond_to do |format|
      if @wallet_detail.save
        format.html { redirect_to wallet_detail_url(@wallet_detail), notice: "Wallet detail was successfully created." }
        format.json { render :show, status: :created, location: @wallet_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wallet_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wallet_details/1 or /wallet_details/1.json
  def update
    respond_to do |format|
      if @wallet_detail.update(wallet_detail_params)
        format.html { redirect_to wallet_detail_url(@wallet_detail), notice: "Wallet detail was successfully updated." }
        format.json { render :show, status: :ok, location: @wallet_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wallet_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wallet_details/1 or /wallet_details/1.json
  def destroy
    @wallet_detail.destroy

    respond_to do |format|
      format.html { redirect_to wallet_details_url, notice: "Wallet detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wallet_detail
      @wallet_detail = WalletDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wallet_detail_params
      params.require(:wallet_detail).permit(:wallet_id, :number, :balance)
    end
end
