def allocate_rooms(customers)
  room_storage = {}
  customers.each_with_object([]) do |customer, arr|
    hotel_room = 1
    room_storage[hotel_room] = [] if room_storage[hotel_room].nil?

    customer_nights_spent_in_room = (customer[0]..customer[1]).to_a
    p "room #{hotel_room} storage: #{room_storage[hotel_room]}"
    p "nights in room #{customer_nights_spent_in_room}"

    until !room_storage[hotel_room].intersect?(customer_nights_spent_in_room)
      hotel_room += 1
      p "room #{hotel_room} storage: #{room_storage[hotel_room]}"
      p "nights in room #{customer_nights_spent_in_room}"
      room_storage[hotel_room] = [] if room_storage[hotel_room].nil?
    end

    room_storage[hotel_room] += customer_nights_spent_in_room
    p "room storage after changes #{room_storage}"
    arr << hotel_room
  end
end