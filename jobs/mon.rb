counter = 0

SCHEDULER.every '5m', :first_in => 0 do |job|

  if counter == 0
    send_event('portal_sfo_dev', { message: "", status:"ok" })
  end

  if counter == 2
    send_event('portal_sfo_dev', { message: "", status:"warning" })
  end

  if counter == 5
    send_event('portal_sfo_dev', { message: "", status:"critical" })
  end

  if counter == 7
    send_event('portal_sfo_dev', { message: "", status:"warning" })
  end

  if counter == 9
    send_event('portal_sfo_dev', { message: "", status:"unknown" })
    counter = 0
  end

  if counter == 11
    send_event('portal_sfo_dev', { message: "", status:"deployment in progress" })
    counter = 0
  end

  counter = counter + 1
  puts counter
end
