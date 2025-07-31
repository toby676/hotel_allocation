def allocate_rooms(customers)
  room_storage = {}
  customers.each_with_object([]) do |customer, arr|
    hotel_room = 1
    room_storage[hotel_room] = [] if room_storage[hotel_room].nil?

    customer_nights_spent_in_room = (customer[0]..customer[1]).to_a
    until (room_storage[hotel_room] & customer_nights_spent_in_room).empty?
      hotel_room += 1
      room_storage[hotel_room] = [] if room_storage[hotel_room].nil?
    end

    room_storage[hotel_room] += customer_nights_spent_in_room
    arr << hotel_room
  end
end