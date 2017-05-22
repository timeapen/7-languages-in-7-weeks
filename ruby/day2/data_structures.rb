# Queues
class Queue
  attr_accessor :queue

  def initialize()
    @queue = []
  end

  def enqueue(element)
    queue.push(element)
  end

  def dequeue()
    queue.shift
  end

  def print()
    puts "Queue: #{queue}"
  end
end

myQueue = Queue.new
puts "Enqueing...."
myQueue.enqueue("Sid")
myQueue.print
myQueue.enqueue("Santo")
myQueue.print
puts "Dequeueing..."
myQueue.dequeue
myQueue.print

# Lists
class List
  attr_accessor :list

  def initialize()
    @list = []
  end

  def add(elem)
    list.push(elem)
  end

  def insert(index, elem)
    list.insert(index, elem)
  end

  def remove(index)
    list.delete_at(index)
  end

  def print()
    puts "List: #{list}"
  end
end

myList = List.new
puts "Adding..."
myList.add("Sid")
myList.add("Santo")
myList.print
myList.insert(1, "Ninu")
myList.print
myList.remove(2)
myList.print

# Set/Bag
class Set
  attr_accessor :set
  def initialize()
    @set = []
  end

  def add(elem)
    if !set.include? elem
      set.push(elem)
    end
    # Could also use set.uniq
  end

  def print()
    puts "Set: #{set}"
  end

  def union(other)
    if other.kind_of?(Set)
      union = set | other.set
      union_set = Set.new
      union_set.set = union
      return union_set
    else
      self
    end
  end

  def intersection(other)
    if other.kind_of?(Set)
      intersection = set & other.set
      intersection_set = Set.new
      intersection_set.set = intersection
      return intersection_set
    else
      self
    end
  end
end

mySet = Set.new
puts "Adding to set"
mySet.add("Sid")
mySet.add("Sid")
mySet.add("Santo")
mySet.add("Santo")
mySet.print

puts "Adding to other set"
otherSet = Set.new
otherSet.add("Sid")
otherSet.add("Ninu")
otherSet.print

puts "Union...."
puts mySet.union(otherSet).print

puts "Intersection...."
puts mySet.intersection(otherSet).print


# Multi-dimensional array
multi = [["Sid, Santo, Oliver"], ["Ninu", "Tim"]]
puts "Multi-dimensional array: #{multi}"
