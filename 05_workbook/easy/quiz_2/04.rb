class BeesWax
  attr_accessor :type

  def initialize(type)
    @type = type
  end

  def what_type
    print "I am a #{type} of Bees Wax"
  end
end
