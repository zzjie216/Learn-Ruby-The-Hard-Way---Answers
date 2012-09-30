## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a Animal
class Dog < Animal
	
	def initialize(name)
		## Dog has-a name
		@name = name
	end
end

## Cat is-a Animal even though some might beg to differ

class Cat < Animal
	
	def initalize(name)
		## Cat has-a name
		@name = name
	end
end

## Defining a person
class Person
	def initialize(name)
		## Person has-a name
		@name = name
		
		## Person has-a pet of some kind
		@pet = nil
	end
	
	attr_accessor :pet
end

## An Employee is-a Person
class Employee < Person
	
	def initialize(name, salary)
		## Employee is-a person who has-a name
		super(name)
		## Employee has-a salary
		@salary = salary
	end
end

## Declares a class called Fish
class Fish
end

## Salmon is-a fish
class Salmon < Fish
end

## Halibut is-a fish
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")

## Satan is-a cat
satan = Cat.new("Satan")

## Mary is-a person
mary = Person.new("Mary")

## Mary has-a pet
mary.pet = satan

## Frank is-a Employee
frank = Employee.new("Frank", 120000)

## Frank has-a pet
frank.pet = rover

## flipper is-a fish
flipper = Fish.new()

## crouse is-a salmon
crouse = Salmon.new()

## harry is-a Halibut
harry = Halibut.new()