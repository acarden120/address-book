require_relative '../models/address_book.rb'
 
RSpec.describe AddressBook do  
  context "attributes" do
   it "should respond to entries" do
    book = AddressBook.new
    expect(book).to respond_to(:entries)
   end
  end

  context "#add_entry" do
    it "adds only one entry to the address book" do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
 
      expect(book.entries.size).to eq 1
    end
 
    it "adds the correct information to entries" do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      new_entry = book.entries[0]
 
      expect(new_entry.name).to eq 'Ada Lovelace'
      expect(new_entry.phone_number).to eq '010.012.1815'
      expect(new_entry.email).to eq 'augusta.king@lovelace.com'
    end
  end

  context "#remove_entry" do
    it "removes the entry from the address book" do
      book = AddressBook.new
      book.add_entry('Test Name', '011.013.1816', 'test.example@gmail.com')
      original_size = book.entries.size

      old_entry = book.entries.last
      book.remove_entry(old_entry)
      
      expect(book.entries.size).to eq original_size - 1

    end
  end

end