require 'forecast_io'

SCHEDULER.every '15m', :first_in => 0 do |job|

  ForecastIO.configure do |c|
    c.api_key = ENV['DARKSKY_SECRET_KEY']
  end

  forecast = ForecastIO.forecast(36.6183,-121.9018)
  current_temperature = forecast['currently']['temperature']
  current_icon = forecast['currently']['icon']

  send_event('weatherMonterey', { :temp => "#{current_temperature} &deg;F",
                          #:condition => detailed_info['main'],
                          #:title => "#{weather_data['name']} Weather",
                          #:color => color_temperature(current_temp),
                          :climacon => "#{current_icon}",
                          :title => "Monterey Bay Acquarium"
  })

  forecast = ForecastIO.forecast(38.7521, -121.2880)
  current_temperature = forecast['currently']['temperature']
  current_icon = forecast['currently']['icon']

  send_event('weather', { :temp => "#{current_temperature} &deg;F",
                            #:condition => detailed_info['main'],
                            #:title => "#{weather_data['name']} Weather",
                            #:color => color_temperature(current_temp),
                            :climacon => "#{current_icon}",
                            :title => "Roseville, CA"
                        })
  
  forecast = ForecastIO.forecast(36.9642553,-122.0210412)
  current_temperature = forecast['currently']['temperature']
  current_icon = forecast['currently']['icon']

  send_event('weatherSantaCruz', { :temp => "#{current_temperature} &deg;F",
                            #:condition => detailed_info['main'],
                            #:title => "#{weather_data['name']} Weather",
                            #:color => color_temperature(current_temp),
                            :climacon => "#{current_icon}",
                            :title => "Santa Cruz Boardwalk"
                        })
  
  forecast = ForecastIO.forecast(38.9444971,-119.9799909)
  current_temperature = forecast['currently']['temperature']
  current_icon = forecast['currently']['icon']

  send_event('weatherTahoe', { :temp => "#{current_temperature} &deg;F",
                            #:condition => detailed_info['main'],
                            #:title => "#{weather_data['name']} Weather",
                            #:color => color_temperature(current_temp),
                            :climacon => "#{current_icon}",
                            :title => "South Lake Tahoe, CA"
                        })

  forecast = ForecastIO.forecast(37.7912557,-122.3985874)
  current_temperature = forecast['currently']['temperature']
  current_icon = forecast['currently']['icon']

  send_event('weatherSFO', { :temp => "#{current_temperature} &deg;F",
                               #:condition => detailed_info['main'],
                               #:title => "#{weather_data['name']} Weather",
                               #:color => color_temperature(current_temp),
                               :climacon => "#{current_icon}",
                               :title => "50 Beale Street, San Francisco, CA"
  })

end

