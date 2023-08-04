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


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
