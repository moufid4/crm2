class Contact
attr_accessor :id, :first_name, :last_name, :email, :note
	
	def initialize

	end

	def add_contact
		puts "First name?"
		first_name = gets.chomp
		puts "Last name?"
		last_name = gets.chomp	
		puts "Email?"
		email = gets.chomp
		puts "Note?"
		note = gets.chomp
		@crm1.new_contact(id, first_name, last_name, email, note)
	end

end