class SearchesController < ApplicationController
  before_action :set_search, only: [:show, :edit, :update]

  def show
    if params[:id].to_s == [:ville].to_s
      @search = Search.find(params[:id])
    else
      puts "error"
     end
  end

  def create
    @search = Search.new(search_params)

    # ICI: elire les garagistes et les sauver en base

    # redirect search#show pour @search

    if @search.valid?
        @search.save
        redirect_to search_path(@search)
    else
        render garagistes_path
    end
  end

  def edit

  end

  def update
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search
      @search = Search.find(params[:id])
    end

  def search_params
      params.require(:search).permit(:intervention, :ville, :code_postal)
    end

end
