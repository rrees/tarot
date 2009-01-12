require 'teller'

cards = Teller.do_reading

cards.each {|card| puts "#{card.name} #{card.meaning}" }