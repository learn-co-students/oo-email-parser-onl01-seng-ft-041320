require "pry"
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :email_list

  def initialize(email_addresses="")
    @email_addresses = email_addresses
  end

  def email_list
    @email_addresses
  end

  def email_list=(emails)
    @email_addresses = emails
  end

  # def remove_duplicates(group_of_emails=[])
  #   group_of_emails.
  # end

  def parse
    email_list.split(/, | |,/).uniq
    # binding.pry
  end

end
