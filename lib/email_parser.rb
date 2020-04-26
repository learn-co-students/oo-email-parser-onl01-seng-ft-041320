# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :email

    def initialize(combined_emails)
        @email = combined_emails
    end

    def parse
        @email = @email.split(/[\s,]+/)
        @email.uniq
    end
end