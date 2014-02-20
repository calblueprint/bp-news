ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :user_name => ENV["EMAIL_ADDRESS"],
  :password => ENV["EMAIL_PASSWORD"],
  :authentication => "plain",
  :domain => Rails.application.domain,
  :enable_starttls_auto => true
}
