class Cube
  attr_reader :volume

  def initialize(volume)
    @volume = volume
  end

end

cube = Cube.new(100)

p cube.volume
