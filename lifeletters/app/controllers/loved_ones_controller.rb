class LovedOnesController < ApplicationController
  before_action :set_loved_one, only: [:show, :edit, :update, :destroy]

  # GET /loved_ones
  # GET /loved_ones.json
  def index
    @loved_ones = LovedOne.all
  end

  # GET /loved_ones/1
  # GET /loved_ones/1.json
  def show
  end

  # GET /loved_ones/new
  def new
    @loved_one = LovedOne.new
  end

  # GET /loved_ones/1/edit
  def edit
  end

  # POST /loved_ones
  # POST /loved_ones.json

  def add_loved_one
    first_name = params[:first_name]
    last_name = params[:last_name]

    new_loved_one = LovedOne.new

    new_loved_one.first_name = first_name
    new_loved_one.last_name = last_name

  end

  def add_liaison

  end

  def create
    @loved_one = LovedOne.new(loved_one_params)

    respond_to do |format|
      if @loved_one.save
        format.html { redirect_to @loved_one, notice: 'Loved one was successfully created.' }
        format.json { render :show, status: :created, location: @loved_one }
      else
        format.html { render :new }
        format.json { render json: @loved_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loved_ones/1
  # PATCH/PUT /loved_ones/1.json
  def update
    respond_to do |format|
      if @loved_one.update(loved_one_params)
        format.html { redirect_to @loved_one, notice: 'Loved one was successfully updated.' }
        format.json { render :show, status: :ok, location: @loved_one }
      else
        format.html { render :edit }
        format.json { render json: @loved_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loved_ones/1
  # DELETE /loved_ones/1.json
  def destroy
    @loved_one.destroy
    respond_to do |format|
      format.html { redirect_to loved_ones_url, notice: 'Loved one was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loved_one
      @loved_one = LovedOne.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loved_one_params
      params.require(:loved_one).permit(:first_name, :last_name, :user_id)
    end
end
