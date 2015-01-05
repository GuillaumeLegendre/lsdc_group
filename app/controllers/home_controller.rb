class HomeController < ApplicationController
  protect_from_forgery :except => :file_upload
  def index
  end

  def form
    # Painting.new
  end

  def submit_form
    # a = AnnonceMailer.ask_valid_annonce(params[:annonce])
    #
    # a.deliver_now
    # puts "RAAAA"
    # redirect_to "/home/form"
  end

  def file_upload
    render status: 200, json: @controller.to_json
  end
end
