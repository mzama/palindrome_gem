require "test_helper"

class MzamaPalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::MzamaPalindrome::VERSION
  end

  # def test_it_does_something_useful
  #   assert false
  # end

  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RAceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam".palindrome?
  end

  def test_processed_content
    assert_equal "12thisisatest", "1, 2, this IS a/ 'TEST'.".send(:processed_content)
  end

  def test_integer_non_palindrome
    refute 12345.palindrome?
  end

  def test_integer_palindrome
    assert 12321.palindrome?
  end

end
