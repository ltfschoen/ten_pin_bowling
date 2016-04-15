class BowlingsController < ApplicationController
  before_action :set_bowling, only: [:add_two_rolls, :show, :edit, :update, :destroy]


  # GET /bowlings
  # GET /bowlings.json
  def index
    @bowlings = Bowling.all
  end

  # GET /bowlings/1
  # GET /bowlings/1.json
  def show
  end

  # GET /bowlings/new
  def new
    @bowling = Bowling.new
  end

  # GET /bowlings/1/edit
  def edit
  end

  # POST /bowlings
  # POST /bowlings.json
  def create
    @bowling = Bowling.new(bowling_params)

    respond_to do |format|
      if @bowling.save
        format.html { redirect_to @bowling, notice: 'Bowling was successfully created.' }
        format.json { render :show, status: :created, location: @bowling }
      else
        format.html { render :new }
        format.json { render json: @bowling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bowlings/1
  # PATCH/PUT /bowlings/1.json
  def update
    respond_to do |format|
      if @bowling.update(bowling_params)
        format.html { redirect_to @bowling, notice: 'Bowling was successfully updated.' }
        format.json { render :show, status: :ok, location: @bowling }
      else
        format.html { render :edit }
        format.json { render json: @bowling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bowlings/1
  # DELETE /bowlings/1.json
  def destroy
    @bowling.destroy
    respond_to do |format|
      format.html { redirect_to bowlings_url, notice: 'Bowling was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bowling
      @bowling = Bowling.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bowling_params
      params.require(:bowling).permit(:score, :first_roll, :second_roll)
    end
end
