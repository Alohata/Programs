#!/bin/env ruby
# encoding: utf-8

puts"VAT calculator // Input sum to calculate the VAT: "
to_calculate = gets.chomp.to_i

def percent_of(to_calculate)
  result = to_calculate * 20 / 100
  puts "Your tax is:" + result.to_s
end

percent_of(to_calculate)  