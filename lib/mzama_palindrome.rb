require "mzama_palindrome/version"

module MzamaPalindrome

  #Returns true if the string is a palindrome, false otherwise
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

    #Returns content for palindrone testing
    def processed_content
      to_s.scan(/[a-z0-9]/i).join.downcase
    end

end

class String
  include MzamaPalindrome
end

class Integer
  include MzamaPalindrome
end



