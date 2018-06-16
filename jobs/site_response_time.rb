require "benchmark"

SCHEDULER.every '5s', :first_in => 0 do
  shellCommand = false
  time = Benchmark.measure do
    shellCommand = system("curl -I 'https://www.blueshieldca.com'")
  end
  puts time.to_s()
  if (shellCommand == true)
    send_event('BSC_SITE_RESPONSE_TIME', { text: time.to_s() })
  else
    send_event('BSC_SITE_RESPONSE_TIME', { text: 'ERROR' })
  end
end
