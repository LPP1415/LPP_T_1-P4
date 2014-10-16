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
end