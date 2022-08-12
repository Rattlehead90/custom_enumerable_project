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

  def my_all?
    all_truthy = true
    my_each { |element| all_truthy = false unless yield element}
    all_truthy
  end

  def my_any?
    one_truthy = false
    my_each { |element| one_truthy = true if yield element }
    one_truthy
  end

  def my_none?
    one_truthy = false
    my_each { |element| one_truthy = true if yield element }
    !one_truthy
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
