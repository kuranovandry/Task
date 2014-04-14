class Task2

  def initialize
    b = Array.new(40) { "#{rand((Time.now - 60*60*24*365)..Time.now).strftime('%d-%m')} #{rand(-10..10)}" 
      12.times do |i|
         for_month = b.select { |item| item.match(Regexp.new('\d?\d\-\d?' + i.to_s + '\s\-?\d*')) }.map { |t| t.split[1].to_i }
                     next if for_month.size < 1
        p "For #{i} month temp = #{for_month.inject(0, &:+)/for_month.size}"
  end

end


