# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser

  attr_accessor :list

  def initialize(unformatted_emails)
    @list = unformatted_emails
  end #new

  def parse
    sep_emails = @list.split(/, | /)
    binding.pry
    clean_emails = []
    sep_emails.each do |email|
      stripped_email = email.include?(',') ? email.tr(',','') : email
      clean_emails << stripped_email if !clean_emails.include?(stripped_email)
    end #do
    @list = clean_emails
  end #parse

end #EmailAddressParser
