# Create a Grandma class that responds to a speak_to method.

# Whatever you speak_to grandma, she should respond with
# HUH?!  SPEAK UP, SONNY!
# unless you shout it (type in all capitals).

# If you shout, she can hear you (or at least she thinks so)
# and yells back

# NO, NOT SINCE 1938!

class Grandma

  def initialize; end

  def speak_to(phrase)
    check = phrase.upcase
    if check == phrase
      "NO, NOT SINCE 1938!"
    else
      "HUH?!  SPEAK UP, SONNY!"
    end
  end
end
