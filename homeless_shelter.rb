require 'terminal-table'

@rows = []

def generator

	puts "Name?"
	name = gets.chomp.capitalize

	puts "Age?"
	age = gets.chomp.to_i

	puts "Any illnesses?"
	illness = gets.chomp.capitalize

	puts "Recent tenant?(30 Days)"
	tenant = gets.chomp.capitalize
	
	@rows << [name, age, illness, tenant]

	puts "Any more to add?"
	input = gets.chomp.downcase
			
		if input == 'yes' || input == 'y'
			generator
		else input == 'no' || input == 'n'
			createtable
			puts @table
		end
end

def createtable
	@table = Terminal::Table.new :title => "Tenant Tracker", :headings => ['Name', 'Age', 'Illness', 'Admitted Recently?'], :rows => @rows, :style => {:width => 80}
end

generator