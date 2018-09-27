class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]
  def welcome
    # render :contest
    @header = "This is the welcome page for my site, please abide to my rules"
  end

  def about
    @header = "This is the about section, but what about it stands out?"

  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to welcome_path
  end

  def kitten

  end

  def kittens

  end

  def set_kitten_url
    requested_size = params[:size]
  @kitten_url = "http://placekitten.com/#{requested_size}/#{requested_size}"
  end

  def secrets
    if params[:magic_word] != "love"
      redirect_to welcome_path
      flash[:alert] = "Sorry, you're not authorized to see that page!"
    end
  end

end
