# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser

  attr_accessor :list

  def initialize(unformatted_emails)
    binding.pry
    @list = unformatted_emails
  end #new

  def parse
    sep_emails = @list.split(' ')
    clean_emails = sep_emails.collect {|email| email.include?(',') ? email.tr(',','') : email}
    # binding.pry
    @list = clean_emails
  end #parse

end #EmailAddressParser
