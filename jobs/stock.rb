require 'stock_quote'



SCHEDULER.every '1m', :first_in => 0 do |job|
  aapl = StockQuote::Stock.quote("aapl")
  tsla = StockQuote::Stock.quote("tsla")
  race = StockQuote::Stock.quote("race")
  amzn = StockQuote::Stock.quote("amzn")
  fb = StockQuote::Stock.quote("fb")
  xom = StockQuote::Stock.quote("xom")
  msft = StockQuote::Stock.quote("msft")

  puts aapl.to_yaml()

  send_event('aapl', {text: "Ask: $" + aapl.ask.to_s + " Bid: $" + aapl.bid.to_s + " Last: " + aapl.last_trade_with_time.to_s, title: "Apple"})
  send_event('tsla', {text: "Ask: $" + tsla.ask.to_s + " Bid: $" + tsla.bid.to_s, title: "Tesla"})
  send_event('race', {text: "Ask: $" + race.ask.to_s + " Bid: $" + race.bid.to_s, title: "Ferrari"})
  send_event('amzn', {text: "Ask: $" + amzn.ask.to_s + " Bid: $" + amzn.bid.to_s, title: "Amazon"})
  send_event('fb', {text: "Ask: $" + fb.ask.to_s + " Bid: $" + fb.bid.to_s, title: "Facebook"})
  send_event('xom', {text: "Ask: $" + xom.ask.to_s + " Bid: $" + xom.bid.to_s, title: "Exxon"})
  send_event('msft', {text: "Ask: $" + msft.ask.to_s + " Bid: $" + msft.bid.to_s, title: "Microsoft"})
end
