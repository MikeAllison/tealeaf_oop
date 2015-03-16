class Person
  attr_accessor :lastname
  attr_accessor :firstname

  def initialize(firstname, lastname)
    @firstname = firstname
    @lastname = lastname
  end

  def <=>(person_to_compare_to)
    lastname_comparison = self.lastname <=> person_to_compare_to.lastname
    return lastname_comparison unless lastname_comparison == 0
    self.firstname <=> person_to_compare_to.firstname
  end
end

jennifer = Person.new("Jennifer", "Van Allen")
mike = Person.new("Mike", "Allison")
jen = Person.new("Jen", "Allison")

p jennifer.<=>(mike)
p mike.<=>(jennifer)
p jen.<=>(mike)
p mike.<=>(jen)
p jen.<=>(jennifer)
p jennifer.<=>(jen)
