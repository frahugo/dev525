class Vin
  attr_accessor :vintage
  attr_accessor :years_to_maturity
  
  def initialize(vintage = Time.now.year, years_to_maturity = 3)
    @vintage = vintage.to_i
    @years_to_maturity = years_to_maturity.to_i
  end
  
  def drink_in_year
    vintage + years_to_maturity
  end
end

puts Vin.new('2010', '6').vintage

vin = Vin.new(2010, 5)
puts vin.drink_in_year