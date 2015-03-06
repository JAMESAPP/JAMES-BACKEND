class OilExchangesController < ApplicationController
  before_action :set_oil_exchange, only: [:show, :edit, :update, :destroy]

  # GET /oil_exchanges
  # GET /oil_exchanges.json
  def index
    @oil_exchanges = OilExchange.all
  end

  # GET /oil_exchanges/1
  # GET /oil_exchanges/1.json
  def show
  end

  # GET /oil_exchanges/new
  def new
    @oil_exchange = OilExchange.new
  end

  # GET /oil_exchanges/1/edit
  def edit
  end

  # POST /oil_exchanges
  # POST /oil_exchanges.json
  def create
    @oil_exchange = OilExchange.new(oil_exchange_params)

    respond_to do |format|
      if @oil_exchange.save
        format.html { redirect_to @oil_exchange, notice: 'Oil exchange was successfully created.' }
        format.json { render :show, status: :created, location: @oil_exchange }
      else
        format.html { render :new }
        format.json { render json: @oil_exchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oil_exchanges/1
  # PATCH/PUT /oil_exchanges/1.json
  def update
    respond_to do |format|
      if @oil_exchange.update(oil_exchange_params)
        format.html { redirect_to @oil_exchange, notice: 'Oil exchange was successfully updated.' }
        format.json { render :show, status: :ok, location: @oil_exchange }
      else
        format.html { render :edit }
        format.json { render json: @oil_exchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oil_exchanges/1
  # DELETE /oil_exchanges/1.json
  def destroy
    @oil_exchange.destroy
    respond_to do |format|
      format.html { redirect_to oil_exchanges_url, notice: 'Oil exchange was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oil_exchange
      @oil_exchange = OilExchange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oil_exchange_params
      params.require(:oil_exchange).permit(:date, :KM, :amount, :price, :observation)
    end
end
