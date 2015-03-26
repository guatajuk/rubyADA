class Ordenar

  attr_accessor :bucket0, :bucket1, :bucket2, :bucket3, :bucket4, :bucket5, :bucket6, :bucket7, :bucket8, :bucket9

  def initialize
    @bucket0 = []
    @bucket1 = []
    @bucket2 = []
    @bucket3 = []
    @bucket4 = []  
    @bucket5 = [] 
    @bucket6 = []
    @bucket7 = []
    @bucket8 = []
    @bucket9 = []
  end

  def radixsort( lista )
    0.upto lista.max.to_s.size do |i|
      
      lista.each do |j|
        case j.to_s.reverse[i].to_i
          when 0
            @bucket0 << j
          when 1
            @bucket1 << j
          when 2
            @bucket2 << j
          when 3
            @bucket3 << j
          when 4
            @bucket4 << j
          when 5
            @bucket5 << j
          when 6
            @bucket6 << j
          when 7
            @bucket7 << j
          when 8
            @bucket8 << j
          when 9
            @bucket9 << j
        end
        lista = @bucket0 + @bucket1 + @bucket2 + @bucket3 + @bucket4 + @bucket5 + @bucket6 + @bucket7 + @bucket8 + @bucket9
      end
        initialize
        puts lista.to_s
    end
  end
end

o = Ordenar.new
beginning_time = Time.now
o.radixsort([100,5,142,33,678,200])
end_time = Time.now
puts "El tiempo transcurrido fue de #{(end_time - beginning_time).to_s} segundos"
