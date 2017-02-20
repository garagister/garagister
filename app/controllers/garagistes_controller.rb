class GaragistesController < ApplicationController
  before_action :set_garagiste, only: [:show, :edit, :update, :destroy]

  # GET /garagistes
  # GET /garagistes.json
  def index
    @garagistes = Garagiste.all
  end

  # GET /garagistes/1
  # GET /garagistes/1.json
  def show
  end

  # GET /garagistes/new
  def new
    @garagiste = Garagiste.new
  end

  # GET /garagistes/1/edit
  def edit
  end

  # POST /garagistes
  # POST /garagistes.json
  def create
    @garagiste = Garagiste.new(garagiste_params)

    respond_to do |format|
      if @garagiste.save
        format.html { redirect_to @garagiste, notice: 'Garagiste was successfully created.' }
        format.json { render :show, status: :created, location: @garagiste }
      else
        format.html { render :new }
        format.json { render json: @garagiste.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garagistes/1
  # PATCH/PUT /garagistes/1.json
  def update
    respond_to do |format|
      if @garagiste.update(garagiste_params)
        format.html { redirect_to @garagiste, notice: 'Garagiste was successfully updated.' }
        format.json { render :show, status: :ok, location: @garagiste }
      else
        format.html { render :edit }
        format.json { render json: @garagiste.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garagistes/1
  # DELETE /garagistes/1.json
  def destroy
    @garagiste.destroy
    respond_to do |format|
      format.html { redirect_to garagistes_url, notice: 'Garagiste was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garagiste
      @garagiste = Garagiste.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def garagiste_params
      params.require(:garagiste).permit(:name, :ville, :code_postal, :categorie, :taux_mo, :taux_piece)
    end
end
