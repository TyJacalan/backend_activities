#Given the following data structures, write a program that copies the information from the array into the empty hash that applies to the correct person.

#contact_data = [
#  ["john@email.com", "123 Main st.", "555-123-4567"],
#  ["avion@email.com", "404 Not Found Dr.", "123-234-3456"]  
#]

#contacts = {"John Cruz": {}, "Avion School": {}}

#merge_contact_data(contact_data, contacts)
# => {
#  "John Cruz": {
#    email: "john@email.com",
#    address: "123 Main St.",
#    phone: "555-123-4567"
#  },
#  "Avion School": {
#    email: "avion@email.com",
#    address: "404 Not Found Dr.",
#    phone: "123-234-3456"
#  }
# }

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