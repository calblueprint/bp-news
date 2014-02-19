ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 25,
  :user_name => "jay.ryoo@gmail.com",
  :password => ENV['EMAIL_PASSWORD'],
  :authentication => "plain",
  # :domain => Rails.application.domain,
  :enable_starttls_auto => false
}
