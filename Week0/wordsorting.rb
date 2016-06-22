puts "Type in your sentence here:"
answer = gets.gsub(/[^A-Za-z0-9\s]/i, ' ').downcase
answer = answer.split( ).sort{ |a,b| a <=> b }


