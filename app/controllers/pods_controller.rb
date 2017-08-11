class PodsController < ApplicationController
  before_action :set_pod, only: [:show, :edit, :update, :destroy]

  # GET /pods
  # GET /pods.json
  def index
    @pods = Pod.all
  end

  # GET /pods/1
  # GET /pods/1.json
  def show
  end

  # GET /pods/new
  def new
    @pod = Pod.new
  end

  # GET /pods/1/edit
  def edit
  end

  # POST /pods
  # POST /pods.json
  def create
    @pod = Pod.new(pod_params)

    respond_to do |format|
      if @pod.save
        format.html { redirect_to @pod, notice: 'Pod was successfully created.' }
        format.json { render :show, status: :created, location: @pod }
      else
        format.html { render :new }
        format.json { render json: @pod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pods/1
  # PATCH/PUT /pods/1.json
  def update
    respond_to do |format|
      if @pod.update(pod_params)
        format.html { redirect_to @pod, notice: 'Pod was successfully updated.' }
        format.json { render :show, status: :ok, location: @pod }
      else
        format.html { render :edit }
        format.json { render json: @pod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pods/1
  # DELETE /pods/1.json
  def destroy
    @pod.destroy
    respond_to do |format|
      format.html { redirect_to pods_url, notice: 'Pod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pod
      @pod = Pod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pod_params
      params.require(:pod).permit(:title, :body)
    end
end
