class ProjectsController < ApplicationController
  load_and_authorize_resource
  # before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
    3.times { @project.project_companies.build }
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    @project.recompany = current_recompany

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # def set_project
    #  @project = Project.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      pp = params.require(:project).permit(:name, :project_address, :showroom_address, :showroom_telephone, :opening_hours, :description, :characteristics, :main_image, :barbecue_area, :gym, :pool, :multipurpose_room, :laundry_room, :controlled_access, :visitors_parking, :play_area, :club_house, :games_room, :green_areas, :bike_parking, :parking, :warehouses, :arch_finishes, :inmediate_availability, :availability_date, :number_of_buildings, :number_of_floors, project_companies_attributes: [:company_id])
      pp[:role] = params[:project][:role].to_i
      return pp
    end
end
