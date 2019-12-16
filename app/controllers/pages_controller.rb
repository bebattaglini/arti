class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :panel]
  skip_before_action :authenticate_artist!, only: [:home, :dashboard]

  def home
  end

  def dashboard
  end

  def panel
  end
end
