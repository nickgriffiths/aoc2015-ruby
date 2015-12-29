#!/usr/bin/env ruby

class MegaGreeter

  attr_accessor :names

  def initialize(names = "person")
    @names = names
  end

  def say_hi
    if @names.nil?
      puts "..."
    elsif names.respond_to?("each")
      @names.each do |name|
        puts "hello #{name}"
      end
    else
      puts "hello #{names}"
    end
  end

  def say_bye
    puts "goodbye #{names}"
  end

end

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  mg.names = ["bob", "james"]
  mg.say_hi
  mg.say_bye

  mg.names="fred and penny"
  mg.say_hi
  mg.say_bye
  
end
