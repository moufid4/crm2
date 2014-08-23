class Rolodex
attr_accessor :contacts, :first_name, :last_name, :email, :note

	def initialize
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
		@id = 1000

		@contacts = [
		1000 => {
			first_name: "Ross",
			last_name: "Johnson",
			email: "rossjohnson@hotmail.com",
			note: "Such a cool dude."
		},
		1001 => {
			first_name: "Adrian",
			last_name: "Carton de Wiart",
			email: "adrianwiart@gmail.com",
			note: "Even cooler."
		},	
		1002 => {
			first_name: "Moufid",
			last_name: "Larbi Bouamrane",
			email: "moufid4@gmail.com",
			note: "Even cooler."
		}	

		]
		@contacts = contacts
	end

	def display_all_contacts
		system("clear")
		puts "#{@contacts[1001]}"

		

	end

	def modify_contact
		display_all_contacts
		puts "Please enter the ID of the contact you want to modifiy"
		user_select = gets.to_i
		puts "#{@contacts[1000]}"
		puts "Please enter the attribute you want to modifiy"
	end
	
	def new_contact(first_name, last_name, email, note)
		@id += 1
		@contacts << {id: @id, first_name: first_name, last_name: last_name, email: email, note: note}
		$session.print_menu
	end
end
