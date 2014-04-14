class Task1

  def initialize(column=4, rows=4)
    @array = Array.new(column){ Array.new(rows){ rand(-10..10) } }
  end

  def sum
   a = 0
   @array.flatten.each { |i| a += i if i<0 }
   a
  end

end

