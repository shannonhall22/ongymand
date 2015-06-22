class GymFeaturesController < ApplicationController
  before_action :set_gym_feature, only: [:show, :edit, :update, :destroy]

  # GET /gym_features
  # GET /gym_features.json
  def index
    @gym_features = GymFeature.all
  end

  # GET /gym_features/1
  # GET /gym_features/1.json
  def show
  end

  # GET /gym_features/new
  def new
    @gym_feature = GymFeature.new
  end

  # GET /gym_features/1/edit
  def edit
  end

  # POST /gym_features
  # POST /gym_features.json
  def create
    @gym_feature = GymFeature.new(gym_feature_params)

    respond_to do |format|
      if @gym_feature.save
        format.html { redirect_to @gym_feature, notice: 'Gym feature was successfully created.' }
        format.json { render :show, status: :created, location: @gym_feature }
      else
        format.html { render :new }
        format.json { render json: @gym_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gym_features/1
  # PATCH/PUT /gym_features/1.json
  def update
    respond_to do |format|
      if @gym_feature.update(gym_feature_params)
        format.html { redirect_to @gym_feature, notice: 'Gym feature was successfully updated.' }
        format.json { render :show, status: :ok, location: @gym_feature }
      else
        format.html { render :edit }
        format.json { render json: @gym_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gym_features/1
  # DELETE /gym_features/1.json
  def destroy
    @gym_feature.destroy
    respond_to do |format|
      format.html { redirect_to gym_features_url, notice: 'Gym feature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gym_feature
      @gym_feature = GymFeature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gym_feature_params
      params.require(:gym_feature).permit(:gym_id, :feature_id)
    end
end
