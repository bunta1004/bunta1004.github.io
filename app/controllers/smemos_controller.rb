class SmemosController < ApplicationController
  before_action :set_smemo, only: [:show, :edit, :update, :destroy]

  # GET /smemos
  # GET /smemos.json
  def index
    @smemos = Smemo.all
  end

  # GET /smemos/1
  # GET /smemos/1.json
  def show
  end

  # GET /smemos/new
  def new
    @smemo = Smemo.new
  end

  # GET /smemos/1/edit
  def edit
  end

  # POST /smemos
  # POST /smemos.json
  def create
    @smemo = Smemo.new(smemo_params)

    respond_to do |format|
      if @smemo.save
        format.html { redirect_to @smemo, notice: 'Smemo was successfully created.' }
        format.json { render :show, status: :created, location: @smemo }
      else
        format.html { render :new }
        format.json { render json: @smemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smemos/1
  # PATCH/PUT /smemos/1.json
  def update
    respond_to do |format|
      if @smemo.update(smemo_params)
        format.html { redirect_to @smemo, notice: 'Smemo was successfully updated.' }
        format.json { render :show, status: :ok, location: @smemo }
      else
        format.html { render :edit }
        format.json { render json: @smemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smemos/1
  # DELETE /smemos/1.json
  def destroy
    @smemo.destroy
    respond_to do |format|
      format.html { redirect_to smemos_url, notice: 'Smemo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smemo
      @smemo = Smemo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smemo_params
      params.require(:smemo).permit(:name, :title, :memo)
    end
end
