require 'stock_quote'



SCHEDULER.every '1s', :first_in => 0 do |job|
  appl = StockQuote::Stock.quote("aapl")
  tsla = StockQuote::Stock.quote("tsla")
  amzn = StockQuote::Stock.quote("amzn")

  send_event('aapl', {text: "Ask: $" + appl.ask.to_s + " Bid: $" + appl.bid.to_s, title: "Apple"})
  send_event('tsla', {text: "Ask: $" + tsla.ask.to_s + " Bid: $" + tsla.bid.to_s, title: "Tesla"})
  send_event('amzn', {text: "Ask: $" + amzn.ask.to_s + " Bid: $" + amzn.bid.to_s, title: "Amazon"})
end
