class StaticPagesController < ApplicationController
  skip_before_action :authorize

  def questions
  end

  def news
  end

  def contact
  end

  def about
  end

  def terms
  end

  def privacy
  end
end
