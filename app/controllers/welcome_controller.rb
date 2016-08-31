class WelcomeController < ApplicationController
  def index
  end

  def overview
  end

  def students
  end

  def apply
    render "steps/step_1"
  end

  def faq
    @categories = Category.all
  end
end
