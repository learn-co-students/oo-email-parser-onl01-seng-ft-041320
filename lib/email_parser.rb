# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :parser
    def initialize(email_addresses)
        @parser = email_addresses
    end

    def parse
        parser.split(/, | /).uniq
    end 
end
