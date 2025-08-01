def allocate_rooms(customers)
  room_storage = Hash.new { |hash, key| hash[key] = [] }

  sorted_customers = customers.each_with_index.sort_by { |(customer, index)| [customer[1], customer[0]] }
  result = Array.new(customers.length)

  sorted_customers.each do |customer, original_index|
    hotel_room = 1
    check_in, check_out = customer
    nights = (check_in..check_out).to_a

    until !room_storage[hotel_room].any? { |night| nights.include?(night) }
      hotel_room += 1
    end

    room_storage[hotel_room] += nights
    result[original_index] = hotel_room
  end

  result
end