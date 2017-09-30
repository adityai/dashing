#require 'muni'
#
#SCHEDULER.every '30s', :first_in => 0 do |job|
#  routes = {
#      'your route name' => 'intersection of interest',
#  }
#
#
#  routes.each do |route, intersection|
#    predictions = Muni::Route.find(route).inbound.stop_at(intersection).predictions
#    send_event "muni_#{route}", route: route, intersection: intersection, predictions: predictions
#  end
#end