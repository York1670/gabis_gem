 class Herbs
    attr_accessor :herb, :ailment
    
  	@@list_herbs = ["anise", "borage", "dandelion", "turmeric"]

  	def self.which_herb
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