class PagesController < ApplicationController
  def home
    @skills = Skill.all
    @posts = Blogg.all
  end

  def about
  end

  def contact
  end
end
