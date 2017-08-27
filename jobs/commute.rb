require 'net/http'

SCHEDULER.every '15m', :first_in => 0 do |job|
  puts "Testing"
  origin=ENV['TRAFFIC_ORIGIN']
  destination=ENV['TRAFFIC_DESTINATION']

  http = Net::HTTP.new('maps.googleapis.com')
  response = http.request(Net::HTTP::Get.new("/maps/api/directions/json?origin=#{origin}&destination=#{destination}&sensor=false"))
  next unless '200'.eql? response.code

  commute  = JSON.parse(response.body)

  puts commute['routes'][0]['legs'][0]['duration']['text']
  puts commute['routes'][0]['summary']
  puts commute['routes'][0]['warnings']

#  send_event('valuation', { current: current_valuation, last: last_valuation })
end
