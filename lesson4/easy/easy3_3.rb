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
    puts "Hisssss!!!"
  end
end

cat1 = AngryCat.new(3, "tabs")
cat2 = AngryCat.new(10, "oldy")

p cat1.name
p cat2.name
p cat1.age
p cat2.age