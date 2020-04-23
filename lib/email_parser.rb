class EmailAddressParser

   attr_accessor :email_string
  

  def initialize(emails)
    @emails_string = emails
  end

  def parse
    @emails_string.gsub(",",  "").split(" ").uniq 
  end

end
