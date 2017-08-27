require 'net/http'

SCHEDULER.every '15m', :first_in => 0 do |job|
  http = Net::HTTP.new('api.meetup.com')
  response = http.request(Net::HTTP::Get.new("/find/events?photo-host=public&text=jenkins&sig_id=183342610&radius=2&lon=-122.3985874&lat=37.7912557&sig=9926c4cf8b3a07d3ef0595a9c4e566e0378fdbc1"))
  next unless '200'.eql? response.code

  #puts response.code
#  meetups  = JSON.parse(response.body)

#  meetups.each do |meetup|
#    puts meetup['name']
#    venue_name=meetup['venue']['name']
#    venue_address_1=meetup['venue']['address_1']
#    venue_city=meetup['venue']['city']
#    venue_state=meetup['venue']['state']
#    venue_zip=meetup['venue']['zip']
#    puts venue_name
#    puts venue_address_1 + ", " + venue_city + ", " + venue_state + ", " + venue_zip
#  end

#  send_event('valuation', { current: current_valuation, last: last_valuation })
end
