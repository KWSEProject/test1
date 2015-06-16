# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
	:enable_starttls_auto => true,
	:address => "smtp.gmail.com",
	:port => 587,
	:domain => "mycompany.com",
	:authentication => :plain,
	:user_name => "username@mycompany.com",
	:password => "password"
}
