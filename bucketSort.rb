class Ordenar
  attr_accessor :bucketunidades
  attr_accessor :bucketdecenas
  attr_accessor :bucketcentenas
  attr_accessor :ordenado

  def initialize
    @bucketunidades = []
    @bucketdecenas = []
    @bucketcentenas = []
    @ordenado = []
  end

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

  def bucketsort(list)
    list.each do |num|
      case num
      when 0..9
        @bucketunidades << num
      when 10..99
        @bucketdecenas << num
      when 100..999
        @bucketcentenas << num
      end
    end
    puts "vector de entrada" + list.to_s

    puts "bucketunidades " + @bucketunidades.to_s
    puts "bucketdecenas " + @bucketdecenas.to_s
    puts "bucketcentenas " + @bucketcentenas.to_s

    puts "ordenando bucketunidades por insertionsort"
    insertionsort(@bucketunidades)
    puts "ordenando bucketdecenas por insertionsort"
    insertionsort(@bucketdecenas)
    puts "ordenando bucketcentenas por insertionsort"
    insertionsort(@bucketcentenas)

    puts "bucketunidades " + @bucketunidades.to_s
    puts "bucketdecenas " + @bucketdecenas.to_s
    puts "bucketcentenas " + @bucketcentenas.to_s
    
    @ordenado = @bucketunidades + @bucketdecenas + @bucketcentenas

    puts "vector ordenado " + @ordenado.to_s

  end
end

beginning_time = Time.now
o = Ordenar.new
o.bucketsort([100, 9 , 87, 769, 65, 5, 48, 3 ,22 ,492, 0].shuffle)
end_time = Time.now
puts "El tiempo transcurrido fue de #{(end_time - beginning_time).to_s} segundos"
