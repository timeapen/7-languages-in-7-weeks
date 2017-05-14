class Grep
  attr :file_name, :search_pattern

  def initialize(file_name, search_pattern)
    @file_name = file_name
    @search_pattern = search_pattern
  end

  def echo
    puts "Echoing file: #{file_name}, Search pattern: #{search_pattern}"
    line_num = 0
    contents = File.open(file_name).read
    contents.each_line do |line|
      print "#{line_num += 1} #{line}"
    end
  end
end

grep = Grep.new("tree.rb", "def")
grep.echo
