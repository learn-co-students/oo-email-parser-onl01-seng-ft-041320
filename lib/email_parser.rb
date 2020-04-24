class EmailAddressParser

  attr_accessor :emails

  def initialize(email_data)
    @unformatted_emails = email_data
  end


  def parse
    emails = @unformatted_emails.split(/, |\s/).uniq
  end
end
