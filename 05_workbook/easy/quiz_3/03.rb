class AngryCat

  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    print "Hisssss!!!"
  end

end

max = AngryCat.new(12, "Max")
sly = AngryCat.new(10, "Sly")
