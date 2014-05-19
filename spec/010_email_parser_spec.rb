require 'spec_helper'
require_relative '../lib/email_parser.rb' # Code your solution in this file

describe EmailParser,'#parser' do
  it "parses CSV emails" do
    emails = "avi@test.com, bob@test.com"
    EmailParser.new(emails).parse.should == ["avi@test.com", "bob@test.com"]
  end

  it "parses space delimited emails" do
    emails = "avi@test.com bob@test.com"

    EmailParser.new(emails).parse.should == ["avi@test.com", "bob@test.com"]
  end

  it "parses both CSV and spac delimited emails" do
    emails = "avi@test.com, bob@test.com test@avi.com, test@bob.com"

    EmailParser.new(emails).parse.should == ["avi@test.com", "bob@test.com","test@avi.com", "test@bob.com"] 
  end

  it 'parses and removes duplicate emails' do
    emails = "avi@test.com, avi@test.com"
    
    EmailParser.new(emails).parse.should == ["avi@test.com"]
  end

end
