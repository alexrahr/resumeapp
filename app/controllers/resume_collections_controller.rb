class ResumeCollectionsController < ApplicationController
  before_action :set_resume_collection, only: [:show, :edit, :update, :destroy]

  # GET /resume_collections
  # GET /resume_collections.json
  def index
    @resume_collections = ResumeCollection.all
  end

  # GET /resume_collections/1
  # GET /resume_collections/1.json
  def show
  end

  # GET /resume_collections/new
  def new
    @resume_collection = ResumeCollection.new
  end

  # GET /resume_collections/1/edit
  def edit
  end

  # POST /resume_collections
  # POST /resume_collections.json
  def create
    @resume_collection = ResumeCollection.new(resume_collection_params)

    respond_to do |format|
      if @resume_collection.save
        format.html { redirect_to @resume_collection, notice: 'Resume collection was successfully created.' }
        format.json { render action: 'show', status: :created, location: @resume_collection }
      else
        format.html { render action: 'new' }
        format.json { render json: @resume_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resume_collections/1
  # PATCH/PUT /resume_collections/1.json
  def update
    respond_to do |format|
      if @resume_collection.update(resume_collection_params)
        format.html { redirect_to @resume_collection, notice: 'Resume collection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @resume_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resume_collections/1
  # DELETE /resume_collections/1.json
  def destroy
    @resume_collection.destroy
    respond_to do |format|
      format.html { redirect_to resume_collections_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resume_collection
      @resume_collection = ResumeCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resume_collection_params
      params.require(:resume_collection).permit(:name, :user_id)
    end
end
