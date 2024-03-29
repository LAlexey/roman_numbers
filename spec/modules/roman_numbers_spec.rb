require 'roman_numbers'

describe RomanNumbers do
  it { expect(Fixnum).to include(RomanNumbers) }

  describe '#to_rom' do
    test_cases = {
        1 => 'I',
        2 => 'II',
        3 => 'III',
        4 => 'IV',
        5 => 'V',
        6 => 'VI',
        7 => 'VII',
        8 => 'VIII',
        9 => 'IX',

        10 => 'X',
        11 => 'XI',
        12 => 'XII',
        13 => 'XIII',
        14 => 'XIV',
        15 => 'XV',
        16 => 'XVI',
        17 => 'XVII',
        18 => 'XVIII',
        19 => 'XIX',

        20 => 'XX',
        30 => 'XXX',
        40 => 'XL',
        50 => 'L',
        60 => 'LX',
        70 => 'LXX',
        80 => 'LXXX',
        90 => 'XC',

        100 => 'C',
        500 => 'D',
        1000 => 'M',
        49 => 'XLIX',
        88 => 'LXXXVIII',
        1499 => 'MCDXCIX'
    }

    test_cases.each do |fixnum, roman|
      it { expect(fixnum.to_rom).to eq(roman) }
    end
  end
end