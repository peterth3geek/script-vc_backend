class TextScansController < ApplicationController
  before_action :set_text_scan, only: [:show, :edit, :update, :destroy]

  # GET /text_scans
  # GET /text_scans.json
  def index
    @text_scans = TextScan.all
  end

  # GET /text_scans/1
  # GET /text_scans/1.json
  def show
  end

  # GET /text_scans/new
  def new
    @text_scan = TextScan.new
  end

  # GET /text_scans/1/edit
  def edit
  end

  # POST /text_scans
  # POST /text_scans.json
  def create
    @text_scan = TextScan.new(text_scan_params)

    respond_to do |format|
      if @text_scan.save
        format.html { redirect_to @text_scan, notice: 'Text scan was successfully created.' }
        format.json { render :show, status: :created, location: @text_scan }
      else
        format.html { render :new }
        format.json { render json: @text_scan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /text_scans/1
  # PATCH/PUT /text_scans/1.json
  def update
    respond_to do |format|
      if @text_scan.update(text_scan_params)
        format.html { redirect_to @text_scan, notice: 'Text scan was successfully updated.' }
        format.json { render :show, status: :ok, location: @text_scan }
      else
        format.html { render :edit }
        format.json { render json: @text_scan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_scans/1
  # DELETE /text_scans/1.json
  def destroy
    @text_scan.destroy
    respond_to do |format|
      format.html { redirect_to text_scans_url, notice: 'Text scan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text_scan
      @text_scan = TextScan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def text_scan_params
      params.require(:text_scan).permit(:body, :title)
    end
end
