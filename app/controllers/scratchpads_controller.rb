class ScratchpadsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_scratchpad, only: [:show, :edit, :update, :destroy]

  # GET /scratchpads
  # GET /scratchpads.json
  def index
    @scratchpads = Scratchpad.all
  end

  # GET /scratchpads/1
  # GET /scratchpads/1.json
  def show
  end

  # GET /scratchpads/new
  def new
    @scratchpad = Scratchpad.new
  end

  # GET /scratchpads/1/edit
  def edit
  end

  # POST /scratchpads
  # POST /scratchpads.json
  def create
    @scratchpad = Scratchpad.new(scratchpad_params)

    respond_to do |format|
      if @scratchpad.save
        format.html { redirect_to @scratchpad, notice: 'Scratchpad was successfully created.' }
        format.json { render :show, status: :created, location: @scratchpad }
      else
        format.html { render :new }
        format.json { render json: @scratchpad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scratchpads/1
  # PATCH/PUT /scratchpads/1.json
  def update
    respond_to do |format|
      if @scratchpad.update(scratchpad_params)
        format.html { redirect_to @scratchpad, notice: 'Scratchpad was successfully updated.' }
        format.json { render :show, status: :ok, location: @scratchpad }
      else
        format.html { render :edit }
        format.json { render json: @scratchpad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scratchpads/1
  # DELETE /scratchpads/1.json
  def destroy
    @scratchpad.destroy
    respond_to do |format|
      format.html { redirect_to scratchpads_url, notice: 'Scratchpad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scratchpad
      @scratchpad = Scratchpad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scratchpad_params
      params.require(:scratchpad).permit(:name, :description, :active, :starts_at)
    end
end
