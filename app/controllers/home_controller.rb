class HomeController < ApplicationController
  protect_from_forgery :except => :file_upload
  def index
  end

  def form
  end

  def submit_form
    a = AnnonceMailer.ask_valid_annonce(params[:annonce])
    a.deliver
    if params[:annonce][:type] == "vendre"
      redirect_to "/home/form", :notice => "
        <b style='font-size:17px;'>Nous avons bien reçu votre proposition de rachat. Nous vous remercions pour votre confiance.</b>
        </br>
        Votre proposition va être étudiée dans les 24h, et vous recevrez une réponse favorable ou une contre-proposition une fois notre étude terminée.
        </br>
        <b style='font-size:17px;'>À Bientôt</b>
        </br></br>
        <i>N’hésitez pas à effectuer une autre proposition de rachat ou à nous demander une recherche de bien en cliquant sur l’un des boutons suivant :</i>
      "
    else
      redirect_to "/home/form", :alert => "
        <b style='font-size:17px;'>Nous avons bien reçu votre demande de recherche. Nous vous remercions pour votre confiance. </b>
        </br>
        Votre demande va être étudiée dans les 24h, et vous recevrez une réponse favorable ou une contre-proposition une fois notre étude terminée.
        </br>
        <b style='font-size:17px;'>À Bientôt</b>
        </br></br>
        <i>N’hésitez pas à effectuer une autre proposition de rachat ou à nous demander une recherche de bien en cliquant sur l’un des boutons suivant</i>
      "
    end
  end

end
