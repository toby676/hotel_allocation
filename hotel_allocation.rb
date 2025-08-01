def allocate_rooms(customers)
  room_storage = Hash.new { |hash, key| hash[key] = [] }

  customers.each_with_object([]) do |customer, arr|
    hotel_room = 1
    check_in, check_out = customer

    customer_nights_spent_in_room = (check_in..check_out).to_a
    until !room_storage[hotel_room].any? { |night| customer_nights_spent_in_room.include?(night) }
      hotel_room += 1
    end

    room_storage[hotel_room] += customer_nights_spent_in_room
    arr << hotel_room
  end
end