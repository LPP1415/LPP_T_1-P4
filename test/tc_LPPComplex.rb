require './lib/LPPComplex.rb'
require 'test/unit'

class TestLPPContext < Test::Unit::TestCase
    def setup
	@comp1 = LPPComplex.new(2.0,2.0)
    end
    def tear_down
	# nothing
    end 
    def test_simple
	assert_equal("2.0 2.0i", @comp1.to_s,"Initialize fallido")
	assert_equal("4.0 4.0i", (@comp1+@comp1).to_s,"Suma fallida")
	assert_equal("0.0 0.0i", (@comp1-@comp1).to_s,"Resta fallida")
	assert_equal("4.0 4.0i", (@comp1*2).to_s, "M.Escalar fallida")
	assert_equal("0.0 8.0i", (@comp1*@comp1).to_s,"Multi fallida")
	assert_equal("1.0 0.0i", (@comp1/@comp1).to_s,"Divi fallida")
    end
    
end
