ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 25,
  :domain => Rails.application.domain,
  :enable_starttls_auto => false,
}