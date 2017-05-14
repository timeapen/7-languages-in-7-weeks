class Tree
  attr_accessor :children, :node_name

  def initialize(name, children=[])
    @children = children
    @node_name = name
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end

  def has_children?()
    not children.empty?
  end

end

ruby_tree = Tree.new("Marta")
puts "has children"
puts ruby_tree.has_children?

ruby_tree = Tree.new("Ninu", [Tree.new("Oliver"), Tree.new("Tim", [Tree.new("Santo"), Tree.new("Sid")])])

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}


puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}

puts "has children"
puts ruby_tree.has_children?
