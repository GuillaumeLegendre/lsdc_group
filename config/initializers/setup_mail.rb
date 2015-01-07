ActionMailer::Base.smtp_settings = {
  :address   => "smtp.lsdcgroup.com",
  :port      => 587,
  :openssl_verify_mode  => 'none'
}
