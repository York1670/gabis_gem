
class GabisGem::Start
  	attr_accessor :name

    def initialize
      @name = name
    end

  def hello
    puts "Hello. What's your name?"
    name = gets.strip.to_s
    puts "#{name}, would you like to do a search on herbs or ailments?"
    get_started
  end

  
  	def get_started
  		herbs_or_ailments = gets.strip.downcase.to_s
  		puts "Let's get started with the search on #{herbs_or_ailments}"
  		if herbs_or_ailments == "herbs"
  		  Herbs.which_herb
  		elsif herbs_or_ailments == "ailments"
  		  Ailments.which_ailment
  		else
  		  puts "Please, check your answer and spelling"
  		  puts "Do you want to do your search on herbs or ailments?"
  		  get_started
  		end
  	end
  end
  