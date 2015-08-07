def timer
  start_time = Time.new
  yield
  end_time = Time.new
  end_time - start_time
end

# "sleep" suspends the current thread
# for a number of seconds so "sleep(1)"
# waits 1 seconds when "yield" is called in
# the method above and then continues with the
# execution for the "timer" method including:
# "end_time = Time.new"
# "end_time - start_time" (this code returns for the final result)
total_time = timer{ sleep(1) }

puts "Above 0.5 seconds" if total_time > 0.5