class HomeController < ApplicationController
  protect_from_forgery :except => :file_upload
  def index
  end

  def form
  end

  def submit_form
    a = AnnonceMailer.ask_valid_annonce(params[:annonce])
    a.deliver
    redirect_to "/home/form"
  end

end
