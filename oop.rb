# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

# Define class called Unicorn
class Unicorn
    # Two attributes: name (dynamic) and color (default is silver)
    attr_reader :name, :color
    def initialize(name)
        @name = name
        @color = 'silver'
    end
    # method: say(string), returns a passed in string argument, with "*~*" and both ends of string
    def say(message)
        '*~* ' + @color + ' ' + message + ' ' + @name + ' *~*'
    end
end

# Create new variable, horn_horse1, to assign first Unicorn object instance, with just a name, 'Charlie'
# Call say instance method on horn_horse1 object instance, with arugment "sparkle", prints output string
horn_horse1 = Unicorn.new('Charlie')
p horn_horse1.say('sparkle')
# Create another variable, horn_horse2, to assign another Unicorn object instance, with name 'Frankie' and different color 'red'
# Call say instance method on horn_horse2 object instance, with argument 'moody', prints output string
horn_horse2 = Unicorn.new('Frankie')
p horn_horse2.say('moody')


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

# Define class called Vampire
class Vampire
    # Three attributes: name (dynamic), pet (default is 'bat', can be dynamic - goes last), thirsty (default is true)
    attr_reader :name, :thirsty, :pet
    def initialize(name, pet = 'bat')
        @name = name
        @thirsty = true
        @pet = pet
    end
    # method: drink, when called thirsty attribute changes to false; no parameters required
    def drink
        @thirsty = false
    end
end

# Create variable blood_being1, to assign first Vampire object instance; Only include new attribute name 'Dracula' and default pet
# Prints to display attributes of this object
blood_being1 = Vampire.new('Dracula')
p blood_being1
# Create variable blood_being2, to assign another Vampire object instance; name is 'Mortimer' and pet is 'cat'
# Call drink instance method on blood_being2, to change thirsty status
# Prints to display attributes of this object
blood_being2 = Vampire.new('Mortimer', 'cat')
blood_being2.drink
p blood_being2


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

# Define class called Dragon
class Dragon
    # Four attributes: name (dynamic), rider (dynamic), color (dynamic), and is_hungry (default is true)
    attr_reader :name, :rider, :color, :is_hungry
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
    end
    # eat method, one integer parameter for times eaten, if argument passed is 4 or greater, dragon is no longer hungry and is_hungry changes to false
    def eat(times_fed)
        @is_hungry = false if times_fed >= 4
    end
end

# Create varible giant_lizard1 to assign a Dragon object isntance; assign object attributes with arguments: name of 'Puff', trainer called 'Tom', and color of 'green'
# Prints to diplay object atrributes of giant_lizard1
giant_lizard1 = Dragon.new('Puff', 'Tom', 'green')
p giant_lizard1
# Call instance method with argument of integer 3 on giant_lizard1, is_hungry attribute changes to false if fed 4 times
# Print attributes and expected is_hungry attribute to stay same: @is_hungry=true
giant_lizard1.eat(3)
p giant_lizard1
# Call instance method with argument of integer 4 on giant_lizard1, is_hungry attribute changes to false if fed 4 times
# Print attributes and expected is_hungry attribute to change: @is_hungry=false
giant_lizard1.eat(4)
p giant_lizard1
        

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

# Define class called Hobbit
class Hobbit
    # Attributes: name (string dynamic), disposition (string dynamic), age (default to 0), is_adult (default false), has_ring (true if Hobbit name is 'Frodo')
    attr_reader :name, :disposition, :age, :is_adult, :has_ring
    def initialize(name, disposition)
        @name = name
        @disposition = disposition
        @age = 0
        @is_adult = false
        # If Hobbit is named 'Frodo', they have the ring; meaning has_ring = true
        @name == 'Frodo' ? (@has_ring = true) : (@has_ring = false)
    end
    # method: celebrate_birthday, increases age by 1 when called; no arguments required
    def celebrate_birthday
        @age = @age + 1
        # if age is 101 or greater, is_adult attribute is also updated to value of true
        @is_adult = true if @age >= 101 
    end
end

# Create variable hobbit1, assign a new Hobbit object instance with arguments: name of 'Sam', disposition 'loyal'
# Print to display attributes of this object
hobbit1 = Hobbit.new('Sam', 'loyal')
p hobbit1
# Create variable hobbit2, assign a new Hobbit object instance with arguments: name of 'Frodo', disposition 'loyal'
# Print to display attributes of this object, has_ring should be true for this case
hobbit2 = Hobbit.new('Frodo', 'forgiving')
p hobbit2
# Call instance method on hobbit2 101 times, using times method, to test if is_adult properly udpates
101.times {hobbit2.celebrate_birthday}
p hobbit2