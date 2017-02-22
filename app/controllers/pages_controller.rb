class PagesController < ApplicationController
  def home
    @search = Search.new
  end
end
