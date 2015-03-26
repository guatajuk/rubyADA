def shellsort(lista)
  inc = lista.length / 2
  while inc != 0
    inc.step(lista.length-1) do |i|
      el = lista[i]
      while i >= inc and lista[i - inc] > el
        lista[i] = lista[i - inc]
        i -= inc
      end
      lista[i] = el
      puts lista.to_s
    end
    inc = (inc == 2 ? 1 : (inc * 0.45).to_i)
  end
  puts "\nel vector ordenado " + lista.to_s
end


beginning_time = Time.now
shellsort([10, 9, 8, 7, 6, 5, 4, 3 ,2 ,1, 0].shuffle)
end_time = Time.now
puts "El tiempo transcurrido fue de #{(end_time - beginning_time).to_s} segundos"
