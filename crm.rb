require_relative "contact"
require_relative "rolodex"

class Crm

	def initialize
	@crm1 = Rolodex.new

	end
	
	def main_menu
		puts "[1] Add a new contact"
		puts "[2] Modify an existing contact"
		puts "[3] Delete a contact"
		puts "[4] Display all the contacts"
		puts "[5] Display an attribute"
		puts "[6] Exit"
	end

	def print_menu
		main_menu
		puts "Please make a choice"
		user_select = gets.to_i
		call_option(user_select)
	end

	def call_option(user_select)
		add_contact_menu if user_select == 1
		@crm1.modify_contact if user_select == 2
		puts "SUCCESS3" if user_select == 3
		@crm1.display_all_contacts if user_select == 4
		puts "SUCCESS5" if user_select == 5
		puts "SUCCESS6" if user_select == 6
	end


	def add_contact_menu
		puts "First name?"
		first_name = gets.chomp
		puts "Last name?"
		last_name = gets.chomp	
		puts "Email?"
		email = gets.chomp
		puts "Note?"
		note = gets.chomp
		@crm1.new_contact(first_name, last_name, email, note)
	end
end
$session = Crm.new
$session.print_menu