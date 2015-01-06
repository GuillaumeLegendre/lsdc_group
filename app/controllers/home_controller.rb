class HomeController < ApplicationController
  protect_from_forgery :except => :file_upload
  def index
  end

  def form
    Gallery.create
  end

  def submit_form
    a = AnnonceMailer.ask_valid_annonce(params[:annonce])
    puts "test_before_deliver"
    binding.pry
    # a.deliver
    puts "RAAAA"
    redirect_to "/home/form"
  end

end
