def allocate_rooms(customers)
    room_arr = []
    room_allocations = {}

    room_number = 1
    customer_index = 0
    customer_number = customer_index + 1

    room_arr << room_number
    room_allocations[room_number] = customer_number

    p room_arr
    return room_arr
end