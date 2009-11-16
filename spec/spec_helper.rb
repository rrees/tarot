
$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

['teller', 'card'].each {|lib| require "#{lib}"}