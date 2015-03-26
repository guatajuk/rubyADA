def bubblesort(list)
  return list if list.size <= 1
  swapped = true
  while swapped do
    swapped = false
    0.upto(list.size-2) do |i|
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i]
        swapped = true
        print list
        puts ""
      end
   end  
  end
end

beginning_time = Time.now
bubblesort([10, 9, 8, 7, 6, 5, 4, 3 ,2 ,1, 0].shuffle)
end_time = Time.now
puts "El tiempo transcurrido fue de #{(end_time - beginning_time).to_s} segundos"
