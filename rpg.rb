class Human
  def stats
    {
      magic_attack: @magic_attack,
      magic_defence: @magic_defence,
      physical_attack: @physical_attack,
      physical_defence: @physical_defence,
    }
  end
end

class Mage < Human
  def initialize
    @magic_attack = 3
    @magic_defence = 3
    @physical_attack = 1
    @physical_defence = 1
  end
end

class Warrior < Human
  def initialize
    @magic_attack = 1
    @magic_defence = 1
    @physical_attack = 3
    @physical_defence = 3
  end
end

class Squire < Human
  def initialize
    @magic_attack = 2
    @magic_defence = 2
    @physical_attack = 2
    @physical_defence = 2
  end
end

puts "pick between mage, warrior, or squire"
role = gets.chomp
invalid = true

while (invalid)
  if role == "mage"
    mage = Mage.new
    invalid = false
    puts mage.stats
  elsif role == "warrior"
    warrior = Warrior.new
    invalid = false
    puts warrior.stats
  elsif role == "squire"
    squire = Squire.new
    invalid = false
    puts squire.stats
  else
    puts "invalid, pick between mage, warrior, or squire"
    role = gets.chomp
  end
end
