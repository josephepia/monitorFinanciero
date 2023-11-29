class TickersController < ApplicationController
  before_action :set_ticker, only: %i[ show edit update destroy ]

  # GET /tickers or /tickers.json
  def index
    puts "lista de parametros"
    puts params
    @tickers = []

    if params[:search]
      response = HTTParty.get("https://api.tiingo.com/tiingo/utilities/search?query=#{params[:search]}&token=81a8235f351a08e7b2c53a822e5591fa17e0f3b6")
      response.each do |tick|
        newTick = Ticker.new(tick)
        newTick.id = tick[:ticker]
        @tickers.push(newTick)
      end
    else
      @tickers = Ticker.all

    end


    # response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
    #   response = HTTParty.get("https://api.tiingo.com/tiingo/utilities/search?query=#{params[:search]}&token=81a8235f351a08e7b2c53a822e5591fa17e0f3b6")
    # puts response
    # if params[:search]
    #
    #   response = HTTParty.get("https://api.tiingo.com/tiingo/utilities/search?query=#{params[:search]}&token=81a8235f351a08e7b2c53a822e5591fa17e0f3b6")
    #
    # else
    #
    # end
    # @tickers = Ticker.all
    
    #@tickers = if params[:search]
                # use api search tickers
                #else
                # use api show index top tickers
                
  end

  # GET /tickers/1 or /tickers/1.json
  def show
  
  #consultar tickers individual. en 2 consultas
  #1. consultar informacion general ----- meta endpoint
  # https://api.tiingo.com/tiingo/daily/<ticker>
  # profile = HTTParty.get("https://api.tiingo.com/tiingo/daily/#{params}")
  puts("parametros que llegan al show")

  puts(params)
  puts("---fin impresion parametros ")
    # general = HTTParty.get("https://api.tiingo.com/tiingo/utilities/search?query=#{params[:search]}&token=81a8235f351a08e7b2c53a822e5591fa17e0f3b6")
  #2. consultar final del dia, e historico
  
  end

  # GET /tickers/new
  def new
    @ticker = Ticker.new
  end

  # GET /tickers/1/edit
  def edit
  end

  # POST /tickers or /tickers.json
  def create
    @ticker = Ticker.new(ticker_params)

    respond_to do |format|
      if @ticker.save
        format.html { redirect_to ticker_url(@ticker), notice: "Ticker was successfully created." }
        format.json { render :show, status: :created, location: @ticker }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ticker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tickers/1 or /tickers/1.json
  def update
    respond_to do |format|
      if @ticker.update(ticker_params)
        format.html { redirect_to ticker_url(@ticker), notice: "Ticker was successfully updated." }
        format.json { render :show, status: :ok, location: @ticker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ticker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickers/1 or /tickers/1.json
  def destroy
    @ticker.destroy

    respond_to do |format|
      format.html { redirect_to tickers_url, notice: "Ticker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticker
      @ticker = Ticker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ticker_params
      params.require(:ticker).permit(:ticker, :assetType, :name, :assetType, :isActive, :permaTicker, :openFIGITicker)
    end
end
