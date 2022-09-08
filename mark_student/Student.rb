class Student
  attr_reader :marks

  def initialize(name)
    @name = name
    @marks = Array.new
  end

  def exists?(subject_title)
    @marks.select { |el| el.subject_name.eql?(subject_title) }.length != 0
  end

  def add_mark(mark)
    unless exists?(mark.subject_name)
      @marks.push(mark)
    end
  end

  def to_s
      "#{@name} : #{@marks.map { |el| el.to_s }}\n"
  end

end
