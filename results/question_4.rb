=begin

// Java
public boolean isEmpty(String s) {
  return s.length() == 0;
}

# ruby
def empty?(s)
  return s.size == 0
end

=end

# Question 4 - Answer
#
# The Java
# method allows only a string as input and will return a boolean value (true or false)
#
# The ruby method
# allows anything as input (object, string, integer, ...) and returns in this case true or false.
# The ruby method will be executed only if no error happens, as there is no rescue method defined here.
