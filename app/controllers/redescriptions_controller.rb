class RedescriptionsController < ApplicationController
  before_action :set_redescription, only: [:show, :edit, :update, :destroy]

  # GET /redescriptions
  # GET /redescriptions.json
  def index
    @redescriptions = Redescription.all
  end

  # GET /redescriptions/1
  # GET /redescriptions/1.json
  def show
  end

  # GET /redescriptions/new
  def new
    @recompany = Recompany.find(params[:recompany_id])
    @redescription = Redescription.new
  end

  # GET /redescriptions/1/edit
  def edit
  end

  # POST /redescriptions
  # POST /redescriptions.json
  def create
    @redescription = Redescription.new(redescription_params2)
    @redescription.recompany_id = redescription_params[:recompany_id]

    if Recompany.find(params[:recompany_id]).redescription != nil
      respond_to do |format|
        format.html { redirect_to recompany_path(@redescription.recompany_id), notice: 'No se puede guardar, ya existe una descripción' }
      end
    else
      respond_to do |format|
        if @redescription.save
          format.html { redirect_to recompany_path(@redescription.recompany_id), notice: 'Redescription was successfully created.' }
          format.json { render :show, status: :created, location: @redescription }
        else
          format.html { render :new }
          format.json { render json: @redescription.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /redescriptions/1
  # PATCH/PUT /redescriptions/1.json
  def update
    respond_to do |format|
      if @redescription.update(redescription_params)
        format.html { redirect_to @redescription, notice: 'Redescription was successfully updated.' }
        format.json { render :show, status: :ok, location: @redescription }
      else
        format.html { render :edit }
        format.json { render json: @redescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /redescriptions/1
  # DELETE /redescriptions/1.json
  def destroy
    @redescription.destroy
    respond_to do |format|
      format.html { redirect_to redescriptions_url, notice: 'Redescription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_redescription
      @redescription = Redescription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def redescription_params
      # params.require(:redescription).permit(:image, :ppal_title, :ppal_content, :second_title, :second_content, :terc_title, :terc_content, :redescription => [:image, :ppal_title, :ppal_content, :second_title, :second_content, :terc_title, :terc_content])
      params.permit(:recompany_id)
    end

    def redescription_params2
      params.require(:redescription).permit(:image, :ppal_title, :ppal_content, :second_title, :second_content, :terc_title, :terc_content)
    end


end
