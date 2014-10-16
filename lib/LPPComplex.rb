class LPPComplex

    attr_reader :a , :b

    def initialize(a,b)
        @a, @b= a, b
    end
    def +(other_complex)
        LPPComplex.new(@a + other_complex.a,@b + other_complex.b)
    end
    def -(other_complex)
        LPPComplex.new(@a - other_complex.a,@b - other_complex.b)
    end
    def to_s
        "#{@a} #{@b}i"
    end


	def *(other)
        LPPComplex.new(@a*other,@b*other) if other.is_a?Numeric
        LPPComplex.new(@a*other.a - @b*other.b, @a*other.b + @b*other.a)if other.is_a?LPPComplex
	end
	def /(other)
		
	end
end