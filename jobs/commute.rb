require 'net/http'

SCHEDULER.every '15m', :first_in => 0 do |job|
  origin=ENV['TRAFFIC_ORIGIN']
  destination=ENV['TRAFFIC_DESTINATION_1']

  http = Net::HTTP.new('maps.googleapis.com')
  response = http.request(Net::HTTP::Get.new("/maps/api/directions/json?origin=#{origin}&destination=#{destination}&sensor=false"))
  next unless '200'.eql? response.code

  commute  = JSON.parse(response.body)

  duration = commute['routes'][0]['legs'][0]['duration']['text']
  summary = commute['routes'][0]['summary']
  warnings = commute['routes'][0]['warnings']

  send_event('commuteCollege', { title: 'College', duration: duration, summary: summary, warnings: warnings })
end

SCHEDULER.every '15m', :first_in => 0 do |job|
  origin=ENV['TRAFFIC_ORIGIN']
  destination=ENV['TRAFFIC_DESTINATION_2']

  http = Net::HTTP.new('maps.googleapis.com')
  response = http.request(Net::HTTP::Get.new("/maps/api/directions/json?origin=#{origin}&destination=#{destination}&sensor=false"))
  next unless '200'.eql? response.code


  commute  = JSON.parse(response.body)

  duration = commute['routes'][0]['legs'][0]['duration']['text']
  summary = commute['routes'][0]['summary']
  warnings = commute['routes'][0]['warnings']

  send_event('commuteSchool', { title: 'School', duration: duration, summary: summary, warnings: warnings })
end

SCHEDULER.every '15m', :first_in => 0 do |job|
  origin=ENV['TRAFFIC_ORIGIN']
  destination=ENV['TRAFFIC_DESTINATION_3']

  http = Net::HTTP.new('maps.googleapis.com')
  response = http.request(Net::HTTP::Get.new("/maps/api/directions/json?origin=#{origin}&destination=#{destination}&sensor=false"))
  next unless '200'.eql? response.code


  commute  = JSON.parse(response.body)

  duration = commute['routes'][0]['legs'][0]['duration']['text']
  summary = commute['routes'][0]['summary']
  warnings = commute['routes'][0]['warnings']

  send_event('commuteWork', { title: 'Work', duration: duration, summary: summary, warnings: warnings })
end
