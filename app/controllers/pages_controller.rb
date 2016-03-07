class PagesController < ApplicationController

  def home
    redirect_to articles_path if logged_in?
    # Change this to redirect to the dashboard is a user is logged in
  end

  def about
  end

end
