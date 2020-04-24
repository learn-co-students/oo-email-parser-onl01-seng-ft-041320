
class EmailAddressParser
    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        puts split_emails = emails.split.collect { |address| address.split(",")}
        final_emails = split_emails.flatten.uniq
        final_emails
    end
end
