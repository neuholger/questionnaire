class Question2

  def self.method_missing(method_sym, *arguments, &block)
    STDOUT.write method_sym
  end

end

Question2.hello_world
Question2.hi
Question2.send('.345')
