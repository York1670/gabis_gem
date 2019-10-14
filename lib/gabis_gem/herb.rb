  class GabisGem::Herb
    attr_accessor :herb_name, :url, :medicinal_uses
    
    @@all = []
    
    def initialize(herb_name,url)
      @herb_name = herb_name
      @url = url
      @@all << self
    end
    
  	def self.which_herb
  		puts "\nYou're needing information on which herb?"
  		herb = gets.strip.downcase.to_s
  		@@herbs._ailments.fetch("#{herb}")
  	end
  	
  	def self.all
  	  @@all
  	end
  	
  end