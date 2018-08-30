class PagesController < ApplicationController
  def home
    @posts = Blogg.all
  end

  def about
  end

  def contact
  end
end
