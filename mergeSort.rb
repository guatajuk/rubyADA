def mergesort list
  if list.size <= 1  
    list
  else
    left_slice  = list.slice(0, list.size/2)
    right_slice = list.slice(list.size/2, list.size)
    puts "#{left_slice} < --- > #{right_slice}"
    merge(mergesort(left_slice), mergesort(right_slice))
  end
end

def merge(left, right)  
  sorted_list = []
  until left.empty? or right.empty?
    if left.first <= right.first
      puts "#{left.first} es menor que #{right.first}"
      sorted_list << left.shift
    else  
      puts "#{left.first} es mayor que #{right.first}, intercambio"
      sorted_list << right.shift
    end  
    puts "La colección temporalmente está orenada así..."
    print "[ "
    sorted_list.each { |sl| print "#{sl} "}
    puts "]"
  end 
  sorted_list.concat(left).concat(right)  
end  

beginning_time = Time.now
mergesort([10, 9, 8, 7, 6, 5, 4, 3 ,2 ,1, 0].shuffle)
end_time = Time.now
puts "El tiempo transcurrido fue de #{(end_time - beginning_time).to_s} segundos"