# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailAddressParser
    # instance variables
    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def split_space(entry)
        entry.split(' ')
    end

    def split_comma(entry)
        entry.split(',')
    end

    def parse
        separated_emails = []
        parsed_emails = []

        # filtering the string / list of emails
        separated_emails = split_comma(@emails)
        separated_emails.each do |email|
            parsed_emails = parsed_emails | split_space(email)
        end

        parsed_emails
    end
end