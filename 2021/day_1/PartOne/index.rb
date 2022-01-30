# frozen_string_literal: true

require_relative 'values_getter'
require_relative 'increase_counter'

module PartOne
  # My super comment
  class Resolver
    def call
      %w[data_test_AOC data_test_0 data_test_10 data].each do |file_name|
        # %w[data_test_0].each do |file_name"|
        data = PartOne::ValuesGetter.new("PartOne/#{file_name}.txt").call
        response = PartOne::IncreaseCounter.new(data).call
        puts "response for #{file_name} is"
        puts response.to_s
      end
    end
  end
end
