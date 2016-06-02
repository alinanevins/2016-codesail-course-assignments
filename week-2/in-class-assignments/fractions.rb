class Fractions # define function to divide, take in numerator and denominator
attr_accessor :numerator, :denominator
  def initialize(n, d)
    @numerator = n
    @denominator = d
  end

  def todecimal
    if @denominator == 0
      puts "Sorry, the denominator cannot be zero"
    elsif ( @denominator.class == Float ) || ( @denominator.class == Fixnum ) && ( @numerator.class == Float ) || ( @numerator.class == Fixnum )
      puts @numerator.to_f / @denominator.to_f
    else
      puts "Sorry, the denominator cannot be zero"
  end

  def tofraction
    if @denominator == 0
      puts "Sorry, the denominator cannot be zero"
    elsif ( @denominator.class == Float ) || ( @denominator.class == Fixnum ) && ( @numerator.class == Float ) || ( @numerator.class == Fixnum )
      puts @numerator.to_s + '/' + @denominator.to_s
    else
      puts "Sorry, the denominator cannot be zero"
  end

  def simplify
    if @denominator == 0
      puts "Sorry, the denominator cannot be zero"
    elsif ( @denominator.class == Float ) || ( @denominator.class == Fixnum ) && ( @numerator.class == Float ) || ( @numerator.class == Fixnum )
      puts ( @numerator.to_f / @denominator.to_f ).to_r
    else
      puts "Sorry, the denominator cannot be zero"
  end
end
end

# test
quarter = Fractions.new(1,4)
quarter.todecimal
quarter.tofraction
quarter.simplify
