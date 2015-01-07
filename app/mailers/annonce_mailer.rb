class AnnonceMailer < ActionMailer::Base
  default from: "no-reply@lsdc.com"

  def ask_valid_annonce(annonce)
    @annonce = annonce
    mail(to: "legendre.gui@gmail.com", subject: 'todo New annonce de machin')
  end
end
