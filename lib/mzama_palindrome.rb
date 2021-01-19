require "mzama_palindrome/version"

class String

  #Returns true if the string is a palindrome, false otherwise
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    #Returns content for palindrone testing
    def processed_content
      scan(/[a-z0-9]/i).join.downcase
    end

end

#DEFAULT
# module MzamaPalindrome
#   class Error < StandardError; end
#   # Your code goes here...
# end
