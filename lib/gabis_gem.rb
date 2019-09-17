#require "gabis_gem/version"

module GabisGem
  class Start
  	attr_accessor :name
  
  	def initialize
  		@name = name
  	end
  
  	def get_started
  		puts "Hello. What's your name?"
  		name = gets.strip.to_s
  		puts "\n#{name}, do you want to do your search on herbs or ailments?"
  		herbs_or_ailments = gets.strip.to_s
  		puts "Let's get started with the search on #{herbs_or_ailments}"
  	end
  end
  
  class Herbs
  	@@list_herbs = ["anise", "borage", "dandelion", "turmeric"]
  
  	def which_herb
  		puts "\nYou're needing information on which herb?"
  		herb = gets.strip.downcase
  		if @@list_herbs.include? "#{herb}"
  			puts "yay the search works!"
  		else 
  			puts "unable to find herb."
  			which_herb
  		end
  	end
  end
	
	class Ailments
  	@@list_ailments = ["cold", "heartburn", "IBS"]
  
  	def which_ailment
  		puts "\nYou're search for herbs that will help which common ailment?"
  		ailment = gets.strip.downcase
    		if @@list_ailments.include? "#{ailment}"
    			puts "I am sorry you're sick. Let's see if this helps"
    		else
    		  puts "Unable to find ailment.  You may need to see a doctor."
    		end
  	end
	end
start = Start.new 
start.get_started

herbs = Herbs.new
herbs.which_herb

ailments = Ailments.new
ailments.which_ailment
end