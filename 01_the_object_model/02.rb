module BeverageActions
  def chug
    puts "Your glass is empty :("
  end

  def fill_up
    puts "Your glass is full! :)"
  end
end

class Beer
  include BeverageActions

  def is_delicious?
    puts "Yes, it is delicious!!!"
  end
end

stout = Beer.new
stout.chug
stout.fill_up
