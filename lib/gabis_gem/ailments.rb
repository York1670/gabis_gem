class Ailments
  	herbs_ailments = {
	"anise" => ["cold","digestion"], 
	"borage" => ["menstrual","cold"], 
	"dandelion" => ["cold"], 
	"turmeric" => ["anti-inflammatory"]
}

  def self.which_ailment
    puts "Which ailment do you need information for?"
    common_ailment = gets.strip.downcase.to_s
    herbs_ailments.map do |herb,ailments|
      get_help = ailments.select {|ailment| ailment == common_ailment}
      if get_help.size > 0
      	puts herb
      end
    end
  end
end
