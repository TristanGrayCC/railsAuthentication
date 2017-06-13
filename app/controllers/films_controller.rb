class FilmsController < ApplicationController

  before_action :authenticate_user!

  def index
    films = current_user.films
    render :json => films
  end
end
