def allocate_rooms(customers)
  (0..customers.length - 1).each_with_object([]) do |customer, arr|
    arr << customer + 1
  end
end