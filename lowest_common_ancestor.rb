class Node
  attr_accessor :data, :left, :right
end


def insert(data, tree)
  if tree.nil? 
    node =  Node.new
    node.data = data
    return node
  end
  if data <=  tree.data
    tree.left = insert(data, tree.left)
  else
    tree.right = insert(data,tree.right)
  end 
  tree
end
  
def lowest_common_ancestor(node_a,node_b,tree)
  if node_a <= tree.data && node_b <= tree.data
    if node_a == tree.data || node_b == tree.data
      return tree.data
    end
    lowest_common_ancestor(node_a,node_b,tree.left)
  elsif  node_a > tree.data && node_b > tree.data
    lowest_common_ancestor(node_a,node_b,tree.right)
  else
    tree.data
  end

end

tree = nil
[30,8,52,3,20,10,19].each do| num|
  tree = insert(num,tree)
end

File.open(ARGV[0]).each_line do |line|
  node_a, node_b = line.strip.split(" ").map(&:to_i)
  puts lowest_common_ancestor(node_a,node_b,tree)
end