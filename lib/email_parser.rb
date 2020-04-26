class EmailAddressParser
	attr_accessor :email

	def initialize(emails)
		@emails = emails 
	end

	def parse
		@emails.split(/\s|, /).uniq
	end

end