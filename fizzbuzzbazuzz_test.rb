require 'minitest/autopride/'
require 'minitest/pride'

require_relative '..lib/fizzbuzzbazuzz'

class FizzBuzzBaZuzzTest < minitest:: Test
  def fb
    FizzBuzzBaZuzz.new
  end

  def test_existence
    assert(FizzBuzzBaZuzz)
  end

  def test_return_num_for_num
    assert_equal(1, fb.run(1))
    assert_equal(2, fb.run(2))
  end

  def test_returns_fizz_for_div_by_3
    assert_equal('fizz', fb.run(3))
  end

  def test_returns_buzz_for_div_by_5
    assert_equal('buzz', fb.run(5))
    assert_equal('buzz', fb.run(10))
  end

  def test_returns_fizzbuzz_for_div_by_3_and_5
    assert_equal('fizzbuzz', fb.run(15))
    assert_equal('fizzbuzz', fb.run(30))
  end

  def test_returns_fizzbuzz_for_div_by_9
    assert_equal('bazz', fb.run(9))
    assert_equal('bazz', fb.run(18))
  end

  def test_returns_fizzbuzz_for_div_by_5_and_9
    assert_equal('bazuzz', fb.run(45))
    assert_equal('bazuzz', fb.run(90))
  end
end


