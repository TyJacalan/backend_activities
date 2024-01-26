puts '#1'
(1..10).each do |number| 
  puts number 
end

puts '#2'
h = { a: 1, b: 2, c: 3, d: 4 }
puts h[:b]
h[:e] = 5
puts h

puts '#3'
def merge_contact_data(contact_data, contacts)
  contact_data.each_with_index do |contact, index|
    name = contacts.keys[index]
    contacts[name][:email] = contact[0]
    contacts[name][:address] = contact[1]
    contacts[name][:phone] = contact[2]
  end

  contacts
end

contact_data = [
  ['john@email.com', '123 Main st.', '555-123-4567'],
  ['avion@email.com', '404 Not Found Dr.', '123-234-3456']
]

contacts = { "John Cruz": {}, "Avion School": {} }

puts merge_contact_data(contact_data, contacts)