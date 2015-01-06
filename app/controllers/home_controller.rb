class HomeController < ApplicationController
  protect_from_forgery :except => :file_upload
  def index
  end

  def form
    Gallery.new
  end

  def submit_form
    binding.pry
    a = AnnonceMailer.ask_valid_annonce(params[:annonce])
    puts "test_before_deliver"
    # a.deliver
    puts "RAAAA"
    redirect_to "/home/form"
  end

  def file_upload
    puts params.inspect
    render status: 200, json: @controller.to_json
  end
end
