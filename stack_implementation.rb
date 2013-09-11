class MyStack
  attr_accessor :mystack

  def initialize
    @mystack = []
  end

  def push(value)
    @mystack << value
  end

  def pop
    value, @mystack = @mystack [-1],@mystack[0..-2]
    value
  end
end

File.open(ARGV[0]).each_line do |line|
  numbers = line.strip.split(" ").map(&:to_i)

  stack = MyStack.new
  numbers.each do |num|
    stack.push(num)
  end

  popped_items = []
  numbers.each do |num|
    popped_items << stack.pop
    stack.pop
  end

  puts popped_items.join(" ")
end