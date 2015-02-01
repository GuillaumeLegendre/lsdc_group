class AnnonceMailer < ActionMailer::Base
  default from: "no-reply@lsdc.com"

  def ask_valid_annonce(annonce)

    @a = annonce

    type = ""
    if @a[:type] = "vendeur"
      type = "Proposition de rachat"
    else
      type = "Demande de recherche"
    end

    if @a[:image]
      if @a[:image]["1"]
        attachments["1.png"] = @a[:image]["1"].tempfile.read
      end
      if @a[:image]["2"]
        attachments["2.png"] = @a[:image]["2"].tempfile.read
      end
      if @a[:image]["3"]
        attachments["3.png"] = @a[:image]["3"].tempfile.read
      end
    end
    mail(to: "stanleydubois@lsdcgroup.com", subject: "#{annonce[:name]}:#{type}", from: @a[:email])
  end
end
