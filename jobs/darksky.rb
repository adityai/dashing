require 'darksky'

SCHEDULER.every '1h', :first_in => 0 do |job|
darksky = Darksky::API.new(ENV['DARKSKY_SECRET_KEY'])
puts darksky

forecast = darksky.forecast('38.7521', '121.2880')
puts forecast



end

