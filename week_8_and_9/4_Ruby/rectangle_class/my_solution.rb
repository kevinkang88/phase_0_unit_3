# I worked on this challenge [with:Clark & Seba ].

# 2. Pseudocode
# defind instance method Rectangle#area which multiplies @width to @height
# define instance method Rectangle#parameter which adds all the sides together
# defind diagonal method Rectangle#diagonal that uses pythegorian theorem to find the longest side
# define square method Rectangle#square that uses comparason operator that returns true if @width eqals @height 


# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end
  
  def area
    @width*@height
  end
  
  def perimeter
    (@width+@height) * 2
  end
  
  def diagonal
    (@width**2 + @height**2)**0.5
  end
  
  def square?
    @width == @height 
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "something is wrong!" unless yield
end


rectangle = Rectangle.new(10, 20)
square = Rectangle.new(20, 20)

assert{Rectangle.method_defined?(:area) == true}

assert{Rectangle.method_defined?(:square?) == true}

assert{Rectangle.method_defined?(:perimeter) == true}

assert{Rectangle.method_defined?(:diagonal) == true}

assert{rectangle.area == 200}

assert{square.area == 400}

assert{rectangle.perimeter == 60}

assert{square.perimeter == 80}

assert{rectangle.diagonal== 22.360679774997898}

assert{square.diagonal == 28.284271247461902}

assert{rectangle.square? == false}

assert{square.square? == true}


# 5. Reflection 

# This was a quick exercise but had a lot to take away from. There were something
# that I discovered when I saw Rectangle#== method. In order to make comparisons
# on your custom Class in Ruby, defining == is important because using == without
# defining the method will throw an error because computer wouldn't know what to compare.
# I also found on the first paragraph of the enumerable page 
# (http://www.ruby-doc.org/core-2.1.1/Enumerable.html) that inorder to use such
# methods in your class as sort, max,min, you must define <=> metod for the
# same reason.  