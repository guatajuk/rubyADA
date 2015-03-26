def insertionsort list
  for i in 1..(list.length-1)
    x = list[i]
    j = i
    while( j > 0 && list[j-1] > x )
      list[j] = list[j-1]
      j = j - 1
    end
    list[j] = x
    print list
    puts ""
  end
end


beginning_time = Time.now
insertionsort([10, 9, 8, 7, 6, 5, 4, 3 ,2 ,1, 0].shuffle)
end_time = Time.now
puts "El tiempo transcurrido fue de #{(end_time - beginning_time).to_s} segundos"
