class StaticPagesController < ApplicationController
  
  def home

  end

  def post
    SendTweet.new(params[:tweet])
    render 'home'
  end
end
