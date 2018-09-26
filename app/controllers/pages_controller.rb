class PagesController < ApplicationController
  def welcome
    # render :contest
    @header = "This is the welcome page for my site, please abide to my rules"
  end

  def about
    @header = "This is the about section, but what about it stands out?"
  end

  def contest
    @header = "Contest to rule them all... sounds familiar"
  end

  def kitten
    requested_size = params[:size]
    @kitten_url = "http://placekitten.com/#{requested_size}/#{requested_size}"
  end
end
