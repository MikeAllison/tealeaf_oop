class Cat
  def initialize(type)
    @type = type
  end

  def to_s
    puts "I am a #{@type} cat."
  end
end

cat = Cat.new("Tabby")
cat.to_s