# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
  def parse
    indiv_email = emails.split.map {|address| address.split(',')} 
    result = indiv_email.flatten.uniq
    result
  end
end