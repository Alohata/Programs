#!/bin/env ruby
# encoding: utf-8

puts "Input item: "
product = gets.chomp

puts "Item's price: "
price = gets.chomp.to_i

def vat(product, price)
  puts "------------------" 
  puts product.to_s + " price: $" + price.to_s
  puts "VAT: $" + (price*0.2).to_s
  puts "------------------"
  puts "Total: $" + (price*1.2).to_s

end

vat(product, price)


