class Task3

H = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: {'yesterday1'=> 34, 'yesteryear' => 2014}, key: [{'yes' => 23, 'b' => 'travel'}], 'yesterday1'=> 34, 'yesteryear' => 2014}
   
	def symbolize_all_keys(Hash)
	    self.inject({}){|result, (key, value)|
	      new_key = case key
	                when String then key.to_sym
	                else key
	                end
	      new_value = case value
	                  when Hash then value.symbolize_all_keys
	                  else value
	                  end
	      result[new_key] = new_value
	      result
	    }
	end
 
	def yes_keys(Hesh)
	  n = 0
	  hash.each do |k,v|
		n = k.to_s[0,3] == 'yes' ? n+1 : n + nil
	  n
		end
	end
end


