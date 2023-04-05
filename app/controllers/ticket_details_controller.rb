class TicketDetailsController < ApplicationController
  before_action :set_ticket_detail, only: %i[ show edit update destroy ]

  # GET /ticket_details or /ticket_details.json
  def index
    @ticket_details = TicketDetail.all
  end

  # GET /ticket_details/1 or /ticket_details/1.json
  def show
  end

  # GET /ticket_details/new
  def new
    @ticket_detail = TicketDetail.new
  end

  # GET /ticket_details/1/edit
  def edit
  end

  # POST /ticket_details or /ticket_details.json
  def create
    @ticket_detail = TicketDetail.new(ticket_detail_params)

    respond_to do |format|
      if @ticket_detail.save
        format.html { redirect_to ticket_detail_url(@ticket_detail), notice: "Ticket detail was successfully created." }
        format.json { render :show, status: :created, location: @ticket_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ticket_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_details/1 or /ticket_details/1.json
  def update
    respond_to do |format|
      if @ticket_detail.update(ticket_detail_params)
        format.html { redirect_to ticket_detail_url(@ticket_detail), notice: "Ticket detail was successfully updated." }
        format.json { render :show, status: :ok, location: @ticket_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ticket_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_details/1 or /ticket_details/1.json
  def destroy
    @ticket_detail.destroy

    respond_to do |format|
      format.html { redirect_to ticket_details_url, notice: "Ticket detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_detail
      @ticket_detail = TicketDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ticket_detail_params
      params.require(:ticket_detail).permit(:ticket_id, :cus_id, :description, :date)
    end
end
