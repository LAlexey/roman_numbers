require 'roman_numbers/version'

module RomanNumbers
  ROMAN_NUMERICAL = {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
  }

  def to_rom
    result = ''
    num = self
    ROMAN_NUMERICAL.each do |num_value, str_value|
      while num >= num_value do
        result << str_value
        num -= num_value
      end

      break if num.zero?
    end

    result
  end
end

if Fixnum.include?(RomanNumbers) || Fixnum.method_defined?(:to_rom)
  puts 'WARNING: RomanNumbers already used or method :to_rom already overridden'
else
  Fixnum.send(:include, RomanNumbers)
end
