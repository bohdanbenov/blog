class PagesController < ApplicationController
  def home
    @posts = Blogg.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end
end
