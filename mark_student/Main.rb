require_relative 'Mark.rb'
require_relative 'RetakeStudent.rb'
require_relative 'Student.rb'

mark = Mark.new('C++', 4)

puts mark

st = Student.new('First student')

st.add_mark(mark)

puts st

mark2 = Mark.new('C++', 3)

st.add_mark(mark2)

puts st

ret = RetakeStudent.new('Other student')
ret.add_mark(mark)
puts ret
ret.add_mark(mark2)
puts ret