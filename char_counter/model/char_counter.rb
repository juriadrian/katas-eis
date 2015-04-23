class CharCounter

	class << self
		def count(cadena)
			hash = Hash.new {nil}
			if cadena == nil
				return hash
			else
				cadena.each_char{ |c|
					if c == ' ' || c == ''
					elsif hash[c] == nil
						hash[c] = 1
					else
						hash[c] = hash[c] + 1
					end
				}
			end
			return hash
		end
	end
end