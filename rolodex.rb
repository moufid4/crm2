class Rolodex
attr_accessor :contacts, :first_name, :last_name, :email, :note

	def initialize
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note

		@contacts = [
		{
			id: 1000,
			first_name: "Ross",
			last_name: "Johnson",
			email: "rossjohnson@hotmail.com",
			note: "Such a cool dude."
		},
		 {
		 	id: 1001,
			first_name: "Adrian",
			last_name: "Carton de Wiart",
			email: "adrianwiart@gmail.com",
			note: "Even cooler."
		},	
		 {
		 	id: 1002,
			first_name: "Moufid",
			last_name: "Larbi Bouamrane",
			email: "moufid4@gmail.com",
			note: "Even cooler."
		}	

		]
		@contacts = contacts
		@id = 1002
	end

	def display_all_contacts
		system("clear")
		@contacts.each do |contact|
			puts "Contact Id: #{contact[:id]}\nFirst name: #{contact[:first_name]}\nLast name: #{contact[:last_name] }\nEmail: #{contact[:email]}\nNote: #{contact[:note]}\n\********************\n"
		end
			@@session.print_menu

	end
	
	def new_contact(first_name, last_name, email, note)
		@id += 1
		@contacts << {id: @id, first_name: first_name, last_name: last_name, email: email, note: note}
		@@session.print_menu
	end
end
