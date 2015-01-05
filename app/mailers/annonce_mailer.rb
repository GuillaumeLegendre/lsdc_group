class AnnonceMailer < ActionMailer::Base
  default from: "from@example.com"

  def ask_valid_annonce(annonce)
    @annonce = annonce
    mail(to: "TODO@gmail.com", subject: 'TODO New annonce de machin')
  end
end
