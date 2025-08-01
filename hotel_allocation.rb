def allocate_rooms(customers)
  room_last_departure = []

  sorted_customers = customers.each_with_index.sort_by { |(customer, index)| [customer[1], customer[0]] }
  result = Array.new(customers.length)

  sorted_customers.each do |customer, original_index|
    check_in, check_out = customer

    best_room = nil
    latest_departure = 0

    room_last_departure.each_with_index do |last_departure, room_index|
      if last_departure < check_in && last_departure > latest_departure
        best_room = room_index
        latest_departure = last_departure
      end
    end

    if best_room
      room_last_departure[best_room] = check_out
      result[original_index] = best_room + 1
    else
      room_last_departure << check_out
      result[original_index] = room_last_departure.length
    end
  end

  result
end
