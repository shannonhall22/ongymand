class StaticController < ApplicationController

  def home
    render layout: false
  end

  def about
    render layout: false
  end
end
