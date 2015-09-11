require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/bazuzz.rb'

class bazuzzTest < Minitest::Test
  def test_bazuzz_exists
    assert(bazuzz)
  end

  def test_run_exists
    c b = bazuzz.new
    assert_respond_to(b, :run)
  end

  def test_run_returns_empty_array_for_zero
    b = bazuzz.new
    assert_equal([], b.run(0))
  end

  def test_run_returns_upto_max
    b = bazuzz.new
    assert_equal([1], b.run(1))
    assert_equal([1, 2], b.run(2))
    assert_equal([1, 2, 3], b.run(3))
  end

  def test_bazuzz_return_strings
    b = bazuzz.new
    assert_equal(('xxx', b.baz('xxx'))
    assert_equal(('xxx', b.bazuzz('xxx'))
  end

  def test_baz_returns_for_div_by__numbers
    b = bazuzz.new
    assert_equal('baz', b.baz(3))
  end

  def test_baz_returns_for_div_by_9_numbers
    b = bazuzz.new
    assert_equal('bazuzz', b.bazuzz(9))
  end

    end
  end
