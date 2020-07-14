# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser

  attr_accessor :list

  def new(unformatted_emails)
    sep_emails = unformatted_emails.split(' ')
    clean_emails = sep_emails.collect {|email| email.include?(',') ? email.tr(',','') : email}
    @list << clean_emails
    binding.pry
    clean_emails
  end #new

end #EmailAddressParser
