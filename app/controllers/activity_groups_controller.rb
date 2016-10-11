class ActivityGroupsController < ApplicationController
  before_action :set_activity_group, only: [:show, :edit, :update, :destroy]

  # GET /activity_groups
  # GET /activity_groups.json
  def index
    @activity_groups = ActivityGroup.all
  end

  # GET /activity_groups/1
  # GET /activity_groups/1.json
  def show
  end

  # GET /activity_groups/new
  def new
    @activity_group = ActivityGroup.new
  end

  # GET /activity_groups/1/edit
  def edit
  end

  # POST /activity_groups
  # POST /activity_groups.json
  def create
    @activity_group = ActivityGroup.new(activity_group_params)

    respond_to do |format|
      if @activity_group.save
        format.html { redirect_to @activity_group, notice: 'Activity group was successfully created.' }
        format.json { render :show, status: :created, location: @activity_group }
      else
        format.html { render :new }
        format.json { render json: @activity_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_groups/1
  # PATCH/PUT /activity_groups/1.json
  def update
    respond_to do |format|
      if @activity_group.update(activity_group_params)
        format.html { redirect_to @activity_group, notice: 'Activity group was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_group }
      else
        format.html { render :edit }
        format.json { render json: @activity_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_groups/1
  # DELETE /activity_groups/1.json
  def destroy
    @activity_group.destroy
    respond_to do |format|
      format.html { redirect_to activity_groups_url, notice: 'Activity group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_group
      @activity_group = ActivityGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_group_params
      params.require(:activity_group).permit(:activity_id, :student_id, :confirm)
    end
end
