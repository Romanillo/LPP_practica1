require "radio"
require "test/unit"

class TestRadio < Test::Unit::TestCase

   def test_simple
       assert_in_delta(12,Radio.new('75.36'))
   end
	
   def test_typecheck
       assert_raise( RuntimeError ) { Radio.new('a') }
      # assert_raise ( RuntimeError ) { Radio.new('y') }
   end
   def test_igualdad
       assert_equal(56, Radio.new('75.36'))
   end

end
