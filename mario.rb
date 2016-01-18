require 'pry'

module Mario

  def self.build(number, char="#")
    symbols = (1..number).to_a
    spaces = (0..number - 1).to_a
    flag = set_flag_size(number)

    loop do
      puts "#{stairs(symbols, spaces, char) +
              add_flag(char, flag)}"
      break if symbols.empty?
    end
    "Mario...for the win!"
  end

  def self.set_flag_size(num)
    return [1]    if num < 4
    return [2, 1] if num < 7
    [3, 2, 1]
  end

  def self.stairs(symbols, spaces, char)
    "#{" " * spaces.pop + char * symbols.shift}"
  end

  def self.add_flag(char, flag)
    "     |#{(char * flag.pop) unless flag.empty?}"
  end
end
