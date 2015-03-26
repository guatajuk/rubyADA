def heap_sort array
  n = array.size  
  a = [nil] + array
  (n / 2).downto(1) do |i|
    down_heap(a, i, n)
  end
  while n > 1  
    a[1], a[n] = a[n], a[1]  
    n -= 1  
    down_heap(a, 1, n)  
  end  
  a.drop(1)                       
end  
  
def down_heap(a, parent, limit)  
  wk = a[parent]
  while (child = 2 * parent) <= limit  
    child += 1  if child < limit and a[child] < a[child + 1]
    break  if wk >= a[child]  
    a[parent] = a[child]  
    parent = child  
  end  
  a[parent] = wk  
end

beginning_time = Time.now
p heap_sort([10, 9, 8, 7, 6, 5, 4, 3 ,2 ,1, 0].shuffle)
end_time = Time.now
puts "El tiempo transcurrido fue de #{(end_time - beginning_time).to_s} segundos"