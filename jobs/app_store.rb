#!/usr/bin/env ruby
#require 'net/http'
#require 'openssl'
#
## Get info from the App Store of your App:
## Last version Average and Voting
## All time Average and Voting
##
## This job will track average vote score and number of votes
## of your App by scraping the App Store website.
#
## Config
## appPageUrl = '/gb/app/asos/id457876088' # ASOS Shopping App ID
#appPageUrl = '/us/app/blue-shield-of-california/id728293729' # Blue Shield of California App ID
#
#SCHEDULER.every '30m', :first_in => 0 do |job|
#  puts "fetching App Store Rating for App: " + appPageUrl
#  # prepare request
#  http = Net::HTTP.new("itunes.apple.com", Net::HTTP.https_default_port())
#  http.use_ssl = true
#  http.verify_mode = OpenSSL::SSL::VERIFY_NONE # disable ssl certificate check
#
#  # scrape detail page of appPageUrl
#  response = http.request( Net::HTTP::Get.new(appPageUrl) )
#
#  if response.code != "200"
#    puts "App Store store website communication (status-code: #{response.code})\n#{response.body}"
#  else
#    data = {
#      :last_version => {
#        average_rating: 0.0,
#        voters_count: 0
#      },
#      :all_versions => {
#        average_rating: 0.0,
#        voters_count: 0
#      }
#    }
#
#    # Version: ... aria-label="4 stars, 2180 Ratings"
#    average_rating = response.body.match( 'ratingValue":\d\.\d' )
#    average_rating = average_rating.to_s.match('\d\.\d')
#
#    voters_count = response.body.match( '"reviewCount":\d\d\d\d')
#    voters_count = voters_count.to_s.match('\d\d\d\d')
#
#    data[:last_version][:average_rating]=average_rating
#    data[:last_version][:voters_count]=voters_count
#
#    if defined?(send_event)
#      send_event('app_store_rating', data)
#    else
#      print "#{data}\n"
#    end
#  end
#end
#
