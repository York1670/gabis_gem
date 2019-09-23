 class Herbs
    attr_accessor :herb, :ailment
    
  	@@herbs_ailments = {"anise" => ["cold", "digestion"], "borage" => ["menstrual", "digestion"], "dandelion" => ["digestion"], "turmeric" => ["anti-inflammatory", "cold"]}

  	def self.which_herb
  		puts "\nYou're needing information on which herb?"
  		herb = gets.strip.downcase.to_s
  		@@herbs._ailments.fetch("#{herb}")
  	end
  	
  end