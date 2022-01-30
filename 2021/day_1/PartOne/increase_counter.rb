# frozen_string_literal: true

module PartOne
  # Top line of my super class
  class IncreaseCounter
    def initialize(raw_data)
      @raw_data = raw_data
    end

    def call
      count_increasing(@raw_data)
    end

    private

    def count_increasing(data)
      num_of_increasing = 0
      data.each_cons(2) do |pair|
        p a = pair[0].to_i
        p b = pair[1].to_i
        if a < b
          num_of_increasing += 1
          puts b > a
          puts 'a='
          puts a
          puts 'b='
          puts b
          puts "#{b} #{a} increased"
        else
          "#{b} decreased"
        end
      end
      num_of_increasing
    end
  end
end
