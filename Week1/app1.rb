require_relative("lib/caffeine_consumer.rb")
require_relative("lib/designer.rb")
require_relative("lib/programmer.rb")
require_relative("lib/payable.rb")


the_designer = Designer.new
the_designer.design_things

puts ""

the_programmer = Programmer.new
the_programmer.program