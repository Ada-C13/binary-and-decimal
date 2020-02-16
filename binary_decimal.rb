#!/usr/bin/ruby
# 
# Title  : Binary and Decimal - Ada Cohort 13 - Space
# Author : Suely Barreto
# Date   : February 2020
# 

def binary_to_decimal(array)
  dec = 0
  array.each_with_index do |digit, index|
    dec += digit * 2 ** (array.length - 1 - index)
  end
  return dec
end

puts binary_to_decimal([1,1,1,1,1,1,1,1])
