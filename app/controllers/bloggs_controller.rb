class BloggsController < ApplicationController
  before_action :set_blogg, only: [:show, :edit, :update, :destroy, :toggle_status]
  layout "blog"

  # GET /bloggs
  # GET /bloggs.json
  def index
    @bloggs = Blogg.all
    @page_title = "My Portfolio Blog"
  end

  # GET /bloggs/1
  # GET /bloggs/1.json
  def show
    @page_title = @blogg.title
    @seo_keywords = @blog.body
  end

  # GET /bloggs/new
  def new
    @blogg = Blogg.new
  end

  # GET /bloggs/1/edit
  def edit
  end

  # POST /bloggs
  # POST /bloggs.json
  def create
    @blogg = Blogg.new(blogg_params)

    respond_to do |format|
      if @blogg.save
        format.html { redirect_to @blogg, notice: 'Blogg was successfully created.' }
        format.json { render :show, status: :created, location: @blogg }
      else
        format.html { render :new }
        format.json { render json: @blogg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bloggs/1
  # PATCH/PUT /bloggs/1.json
  def update
    respond_to do |format|
      if @blogg.update(blogg_params)
        format.html { redirect_to @blogg, notice: 'Blogg was successfully updated.' }
        format.json { render :show, status: :ok, location: @blogg }
      else
        format.html { render :edit }
        format.json { render json: @blogg.errors, status: :unprocessable_entity }
      end
    end
  end

  def toggle_status
    if @blogg.draft?
      @blogg.published!
    elsif @blogg.published?
      @blogg.draft!
    end
    redirect_to bloggs_url, notice: 'Post status has been updated.'
  end

  # DELETE /bloggs/1
  # DELETE /bloggs/1.json
  def destroy
    @blogg.destroy
    respond_to do |format|
      format.html { redirect_to bloggs_url, notice: 'Blogg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blogg
      @blogg = Blogg.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blogg_params
      params.require(:blogg).permit(:title, :body)
    end
end
