class Ailments
  	@@list_ailments = ["cold", "heartburn", "IBS"]
  
  	def self.which_ailment
  		puts "\nYou're search for herbs that will help which common ailment?"
  		ailment = gets.strip.downcase
    		if @@list_ailments.include? "#{ailment}"
    			puts "I am sorry you're sick. Let's see if this helps"
    		else
    		  puts "Unable to find ailment.  You may need to see a doctor."
    		end
  	end
	end
