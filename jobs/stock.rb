require 'stock_quote'



SCHEDULER.every '1m', :first_in => 0 do |job|
  appl = StockQuote::Stock.quote("aapl")
  tsla = StockQuote::Stock.quote("tsla")
  race = StockQuote::Stock.quote("race")

  send_event('aapl', {text: "Ask: $" + appl.ask.to_s + " Bid: $" + appl.bid.to_s, title: "Apple"})
  send_event('tsla', {text: "Ask: $" + tsla.ask.to_s + " Bid: $" + tsla.bid.to_s, title: "Tesla"})
  send_event('race', {text: "Ask: $" + race.ask.to_s + " Bid: $" + race.bid.to_s, title: "Ferrari"})
end
