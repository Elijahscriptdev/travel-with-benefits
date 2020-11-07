class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index; end

  def about; end

  def contact; end

  def testimonial; end

  def faq; end

  def partners; end
end
