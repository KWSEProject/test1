class EmailController < ApplicationController
	def email_form
	end

	def email_send
		email = params[:email]
		name = params[:name]
		content = params[:content]

		gmail = Gmail.connect("gguggu23@gmail.com","dlrkdud23")
		gmail.deliver do
			to email
			subject "From customer #{name}"
			text_part do
				body "#{content}"
			end
		end

		gmail.logout
	end
end
