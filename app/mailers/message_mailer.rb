#class MessageMailer < ApplicationMailer
class MessageMailer < ActionMailer::Base
	default from: "otero111@hotmail.com"
	default from: "otero111@hotmail.com"

	def new_message(message)
		@message = message
		mail subject: "Message from #{message.name}"
	end
end
