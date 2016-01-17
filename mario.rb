require 'pry'

module Mario

  def self.build_steps(number, char="#")
    pounds = (1..number).to_a
    spaces = (0..number - 1).to_a
    flag_count = [3, 2, 1]
    flag_count.shift if number <= 5

    loop do
      puts "#{" " * spaces.pop + char * pounds.shift}     |#{(char * flag_count.pop) unless flag_count.empty?}"
      break if pounds.empty?
    end
  end
end
