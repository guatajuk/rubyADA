def sequentialsort(lista)
    puts lista.to_s
  0.upto lista.length-1 do |i|

    k = i

    (k+1).upto lista.length-1 do |j|
      if lista[i] > lista[j]
        minvalue = lista[j]
        lista[j] = lista[i]
        lista[i] = minvalue
      puts lista.to_s
      end
    end
  end
end

beginning_time = Time.now
sequentialsort([10, 9, 8, 7, 6, 5, 4, 3 ,2 ,1, 0].shuffle)
end_time = Time.now
puts "El tiempo transcurrido fue de #{(end_time - beginning_time).to_s} segundos"
