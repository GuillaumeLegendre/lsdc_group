class AnnonceMailer < ActionMailer::Base
  default from: "no-reply@lsdc.com"

  def ask_valid_annonce(annonce)
    @annonce = annonce
    puts "test"
    mail(to: "legendre.gui@gmail.com", subject: 'todo New annonce de machin')
  end
end
