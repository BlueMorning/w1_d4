require('minitest/autorun')
require('minitest/rg')
require_relative('./../fizzbuzz.rb')

#ALL METHOD MUST BEGIN WITH TEST_
# APPROACH : Black box approach, we write the tests before coding. Step by step we code the function/method
# 1. Does the method exist ?
# 2. Do the parameters are present ?
# 3. Does the function/method achieve what it is expected to ?

# Process : Write the test > Execute it > Fix the errors and failure > Jump to the next test

class FizzBuzzSpec < Minitest::Test

  FIZZ      = "Fizz"
  BUZZ      = "Buzz"
  FIZZBUZZ  = "FizzBuzz"

  def test_takes_input
    fizzbuzz(0)
  end

  def test_0_returns_fizzbuzz
    result = fizzbuzz(0)
    expected = FIZZBUZZ
    assert_equal(expected, result)
  end

  def test_3_returns_fizz
    result = fizzbuzz(3)
    expected = FIZZ
    assert_equal(expected, result)
  end

  def test_5_returns_fizz
    result = fizzbuzz(5)
    expected = BUZZ
    assert_equal(expected, result)
  end

  def test_5_returns_fizz
    result = fizzbuzz(7)
    expected = "7"
    assert_equal(expected, result)
  end

  def test_10_returns_fizz
    result = fizzbuzz(10)
    expected = BUZZ
    assert_equal(expected, result)
  end

  def test_15_returns_fizz
    result = fizzbuzz(15)
    expected = FIZZBUZZ
    assert_equal(expected, result)
  end



end
