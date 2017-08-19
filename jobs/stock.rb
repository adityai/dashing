require 'stock_quote'



SCHEDULER.every '1m', :first_in => 0 do |job|
  aapl = StockQuote::Stock.quote("aapl")
  tsla = StockQuote::Stock.quote("tsla")
  race = StockQuote::Stock.quote("race")
  amzn = StockQuote::Stock.quote("amzn")
  fb = StockQuote::Stock.quote("fb")
  xom = StockQuote::Stock.quote("xom")
  msft = StockQuote::Stock.quote("msft")

  #puts tsla.to_yaml()

#  send_event('aapl', {text: "Ask: $" + aapl.ask + " Bid: $" + aapl.bid, title: "Apple"})
#  #+ " Last: " + aapl.last_trade_with_time + " Ask Realtime:" + aapl.ask_realtime + " Bid Realtime:" + aapl.bid_realtime + " last_trade_realtime_with_time:" + aapl.last_trade_realtime_with_time + " last_trade_with_time:" + aapl.last_trade_with_time + " last_trade_price_only:" + aapl.last_trade_price_only + " days_range:" + aapl.days_range + " days_range_realtime:" + aapl.days_range_realtime + " open:" + aapl.open, title: "Apple"})
#  send_event('tsla', {text: "Ask: $" + tsla.ask + " Bid: $" + tsla.bid, title: "Tesla"})
#  send_event('race', {text: "Ask: $" + race.ask + " Bid: $" + race.bid, title: "Ferrari"})
#  send_event('amzn', {text: "Ask: $" + amzn.ask + " Bid: $" + amzn.bid, title: "Amazon"})
#  send_event('fb', {text: "Ask: $" + fb.ask + " Bid: $" + fb.bid, title: "Facebook"})
#  send_event('xom', {text: "Ask: $" + xom.ask + " Bid: $" + xom.bid, title: "Exxon"})
#  send_event('msft', {text: "Ask: $" + msft.ask + " Bid: $" + msft.bid, title: "Microsoft"})
end
