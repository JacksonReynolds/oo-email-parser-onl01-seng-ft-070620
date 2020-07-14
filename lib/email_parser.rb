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
    @list = @list.split(/, | /).uniq
  end #parse

end #EmailAddressParser
