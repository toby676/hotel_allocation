def allocate_rooms(customers)
  customers.each_with_object([]) do |customer, arr|
    hotel_room = 1

    until !arr.include? hotel_room
      hotel_room += 1
    end

    arr << hotel_room
  end
end