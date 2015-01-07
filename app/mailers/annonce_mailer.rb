class AnnonceMailer < ActionMailer::Base
  default from: "no-reply@lsdc.com"

  def ask_valid_annonce(annonce)
    puts annonce.inspect

    @a = annonce

    type = ""
    if @a[:type] = "vendeur"
      type = "Proposition de rachat"
    else
      type = "Demande de recherche"
    end

    mail(to: "legendre.gui@gmail.com", subject: "#{annonce[:name]}:#{type}")
  end
end
