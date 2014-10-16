class LPPComplex
	attr_reader :a,:b
	def initialize(a,b)
		@a,@b =a,b
	end

	def *(other)
	LPPComplex.new(@a*other,@b*other) if other.is_a?Numeric
	LPPComplex.new(@a*other.a - @b*other.b, @a*other.b + @b*other.a)if other.is_a?LPPComplex
	end
	def /(other)
		
	end
end
