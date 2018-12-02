# require 'nest_thermostat'
#
# # Converts fahrenheit to celcius.
# def f_to_c(temp)
#         r= (((temp.to_f - 32) * 5) / 9)
#         return sprintf("%.1f",r)
# end
#
# nest_user = ENV['NEST_USER']
# nest_password = ENV['NEST_PASSWORD']
#
# use_metric_system = false
#
# SCHEDULER.every '5m', :first_in => 0 do |job|
# 	nest = NestThermostat::Nest.new({email: nest_user,password: nest_password})
# 	shared_devices=nest.status["shared"]
# 	i = 0
#
# 	shared_devices.each do |shared_device|
#
# #    puts shared_device
# #    puts "Shared device 0: "
# #    puts shared_device[0]
#
# 		puts "Device id: " + shared_device[0]
#     device_id = shared_device[0]
#
#     device = nest.status["shared"][device_id]
#
#     temp = nest.current_temp.to_i
#     puts temp
#
# 		if (use_metric_system)
# 			temp = f_to_c(temp)
# 		end
# 		away = nest.away
# 		state = "off"
# 		leaf_src = ""
#
# 		if(device['hvac_ac_state'])
# 			state = "cooling"
# 		elsif (device['hvac_heater_state'])
# 			state = "heating"
# 		end
#
# 		if(nest.leaf)
# 			leaf_src = "assets/nest_leaf.png"
# 		else
# 			leaf_src = "assets/nest_leaf_trans.png"
# 		end
#
# 		if(away)
# 			temp = "Away"
# 		end
#
# 		send_event('nest' + i.to_s(), { temp: temp , state: state, away: away, leaf: leaf_src })
#     i = i.to_i + 1
# 	end
#
# end
