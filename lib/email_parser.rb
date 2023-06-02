class EmailAddressParser
    attr_reader :emails
  
    def initialize(emails)
      @emails = emails
    end
  
    def parse
      parsed_emails = emails.split(/[,\s]+/).uniq
      parsed_emails.reject { |email| email.empty? }
    end
  end
  