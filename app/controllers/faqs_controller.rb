class FaqsController < ApplicationController
  def index
    @categories = Category.all
  end
end
