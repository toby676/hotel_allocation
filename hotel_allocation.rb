def allocate_rooms(customers)
  arr = []

  (0..customers.length - 1).each do |customer|
    arr << customer + 1
  end

  arr
end