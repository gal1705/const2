class DescriptionsController < ApplicationController
  before_action :set_description, only: [:show, :edit, :update, :destroy]

  # GET /descriptions
  # GET /descriptions.json
  def index
    @descriptions = Description.all
  end

  # GET /descriptions/1
  # GET /descriptions/1.json
  def show
  end

  # GET /descriptions/new
  def new
    @description = Description.new
  end

  # GET /descriptions/1/edit
  def edit
  end

  # POST /descriptions
  # POST /descriptions.json
  def create
    @description = Description.new(description_params2)
    @description.company_id = description_params[:company_id]

    if Company.find(params[:company_id]).description != nil
      respond_to do |format|
        format.html { redirect_to company_path(@description.company_id), notice: 'No se puede guardar, ya existe una descripción' }
      end
    else
      respond_to do |format|
        if @description.save
          format.html { redirect_to company_path(@description.company_id), notice: 'Description was successfully created.' }
          format.json { render :show, status: :created, location: @description }
        else
          format.html { render :new }
          format.json { render json: @description.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /descriptions/1
  # PATCH/PUT /descriptions/1.json
  def update
    respond_to do |format|
      if @description.update(description_params)
        format.html { redirect_to @description, notice: 'Description was successfully updated.' }
        format.json { render :show, status: :ok, location: @description }
      else
        format.html { render :edit }
        format.json { render json: @description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descriptions/1
  # DELETE /descriptions/1.json
  def destroy
    @description.destroy
    respond_to do |format|
      format.html { redirect_to descriptions_url, notice: 'Description was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_description
      @company = Company.find(params[:company_id])
      @description = @company.description
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def description_params
      params.permit(:company_id)
    end

    def description_params2
      params.require(:description).permit(:image, :ppal_title, :ppal_content, :second_title, :second_content, :terc_title, :terc_content)
    end

end
