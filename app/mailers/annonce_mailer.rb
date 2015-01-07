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

    attachments["1.png"] = @a[:image]["1"].tempfile
    attachments["2.png"] = @a[:image]["2"].tempfile
    attachments["3.png"] = @a[:image]["3"].tempfile
    mail(to: "legendre.gui@gmail.com", subject: "#{annonce[:name]}:#{type}")
  end
end
