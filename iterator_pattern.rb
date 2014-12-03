# Iterator Pattern (external)
class ArrayIterator
  def initialize(array)
    @array = array
    @index = 0
  end

  def has_next?
    @index < @array.length
  end

  def item
    @array[@index]
  end

  def next_item
    value = @array[@index]
    @index += 1
    value
  end
end

array = ['red', 'green', 'blue']
i = ArrayIterator.new(array)

while i.has_next?
  puts("item: #{i.next_item}")
end

# Iterator Pattern (internal)
array = ['red', 'green', 'blue']
array.each do | color |
  puts(color)
end
