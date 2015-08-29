require_relative '../models/entry.rb'

 RSpec.describe Entry do
   context "attributes" do
     it "should respond to name" do
       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       entry = Entry.new
       expect(entry).to respond_to(:name)
     end

     it "should respond to phone_number" do
       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       entry = Entry.new
       expect(entry).to respond_to(:phone_number)
     end

     it "should respond to email" do
       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       entry = Entry.new
       expect(entry).to respond_to(:email)
     end
   end
 end