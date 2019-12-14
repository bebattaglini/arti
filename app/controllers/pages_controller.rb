class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  skip_before_action :authenticate_artist!, only: [:home]

  def home
  end

  def dashboard
  end

  def artist_dashboard
  end
end
