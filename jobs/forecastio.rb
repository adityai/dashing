require 'forecast_io'

SCHEDULER.every '15m', :first_in => 0 do |job|

  ForecastIO.configure do |c|
    c.api_key = "79aceb2278fc9ee29c4d89b5b9a9850f"
  end

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
end
