module Enumerable
  # Your code goes here
  def my_each_with_index
    i = 0
    for element in self do
      yield element, i
      i += 1 
    end
  end

  def my_select
    formatted_array = []
    my_each { |element| formatted_array.push(element) if yield element}
    formatted_array
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    return self unless block_given?

    for element in self do 
      yield element
    end
  end
end
