# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  #parses CSV emails
  attr_accessor :name, :csv_emails
  
  #parses space delimited emails
 def initialize(csv_emails)
  @csv_emails = csv_emails
 end
 #parses both CSV and space delimited emails
   # parses and removes duplicate emails
 def parse
  #takes the emails and splits them and collects them so I can do something with them.
  #takes the collection on messages and splits them again delimits space
  #then .flatten puts it all in one and .uniq removes the duplicates
  csv_emails.split.map {|message| message.split(",")}.flatten.uniq
 end

end