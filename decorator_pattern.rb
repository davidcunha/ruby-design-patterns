#Decorator Pattern

module Decorator1
  def do_something(common_item_to_decorate)
   #code
  end
end

module Decorator2
  def do_something(common_item_to_decorate)
   #code
  end
end

d = SimpleItem.new()
d.extend(Decorator1)
d.extend(Decorator2)

e.do_something('howdy')