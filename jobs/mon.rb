counter = 0

SCHEDULER.every '5s', :first_in => 0 do |job|

  if counter == 0
    send_event('portal_sfo_dev', { message: "Smoke-free", status:"ok" })
  end

  if counter == 2
    send_event('portal_sfo_dev', { message: "In progress", status:"deployment" })
  end

  if counter == 5
    send_event('portal_sfo_dev', { message: "Smokey", status:"critical" })
  end


  if counter == 9
    send_event('portal_sfo_dev', { message: "Foobar", status:"unknown" })
    counter = 0
  end

  counter = counter + 1
  if counter == 10
    counter = 0
  end
  puts counter
end
