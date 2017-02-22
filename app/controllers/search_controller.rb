class SearchController < ApplicationController
  before_action :set_search, only: [:show, :edit, :update]

  def show



  end

  def create
    @search = Search.new(search_params)


    # ICI: elire les garagistes et les sauver en base


    # redirect search#show pour @search

    if @search.valid?
        @search.save
        redirect_to search_show_path(@search)
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
      params.require(:search).permit(:intervention, :ville)
    end

end
