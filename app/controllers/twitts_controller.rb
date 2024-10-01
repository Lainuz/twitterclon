class TwittsController < ApplicationController
  before_action :set_twitt, only: %i[ show edit update destroy ]

  # GET /twitts or /twitts.json
  def index
    @twitts = Twitt.all
  end

  # GET /twitts/1 or /twitts/1.json
  def show
  end

  # GET /twitts/new
  def new
    @twitt = Twitt.new
  end

  # GET /twitts/1/edit
  def edit
  end

  # POST /twitts or /twitts.json
  def create
    @twitt = Twitt.new(twitt_params)

    respond_to do |format|
      if @twitt.save
        format.html { redirect_to @twitt, notice: "Twitt was successfully created." }
        format.json { render :show, status: :created, location: @twitt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @twitt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twitts/1 or /twitts/1.json
  def update
    respond_to do |format|
      if @twitt.update(twitt_params)
        format.html { redirect_to @twitt, notice: "Twitt was successfully updated." }
        format.json { render :show, status: :ok, location: @twitt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @twitt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twitts/1 or /twitts/1.json
  def destroy
    @twitt.destroy!

    respond_to do |format|
      format.html { redirect_to twitts_path, status: :see_other, notice: "Twitt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twitt
      @twitt = Twitt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def twitt_params
      params.require(:twitt).permit(:username, :description)
    end
end
