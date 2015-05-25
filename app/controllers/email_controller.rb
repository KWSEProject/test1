class EmailController < ApplicationController
	def email_form
	end

	def email_send
		email = params[:email]
		title = params[:title]
		content = params[:content]

		gmail = Gmail.connect("gguggu0417@gmail.com", "dlrkdud23")
		gmail.deliver do
			to email
			subject title
			text_part do
				body contect
			end
		end

		gmail.logout
	end

end
