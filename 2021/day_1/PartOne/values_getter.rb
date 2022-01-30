# frozen_string_literal: true

module PartOne
  # Top line of my super class
  class ValuesGetter
    def initialize(file_path)
      @file_path = file_path
    end

    def call
      parser(@file_path)
    end

    private

    def parser(file_path)
      File.readlines(file_path)
      # data = []
      # File.open(file_path, 'r') do |f|
      #   puts f
      #   f.each_line do |line|
      #     data << line # puts line
      #   end
      # end
    end
  end
end
