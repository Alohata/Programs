#!/bin/env ruby
# encoding: utf-8

puts "                         "
puts "Please, input quantity of products: "
puts "------------------------------------"
n = gets.chomp.to_i

products_list = []

1.upto(n).each do 
  product = {}
  puts "Product: "
  product[:article] = gets.chomp

  puts "Price: "
  product[:price] = gets.chomp.to_i

  products_list << product
end

def price(products)
  price_amount = 0
  products.each do |product|
    puts [product[:article], product[:price]].join(": $")
    price_amount = price_amount + product[:price]
  end
  puts "............................"
  puts ["Sum of comodities", price_amount].join(": $")
end

def vat(products)
  total_vat_amount = 0
  products.each do |product|
    puts [product[:article], product[:price]*0.2].join(": $")
    total_vat_amount = total_vat_amount + product[:price]*0.2
  end
  puts "............................"
  puts ["Sum VAT", total_vat_amount].join(": ")
end

def total(products)
  total_amount = 0
  products.each do |product|
    puts [product[:article], product[:price]*1.2].join(": $")
    total_amount = total_amount + product[:price]*1.2
  end
  puts ".................................."
  puts ["Your total amount is", total_amount].join(": $")
end


puts "----------------------------"
puts "                         "
puts "Price of comodities: "
price(products_list)

puts "----------------------------"
puts "                         "
puts "VAT of comodities: "
vat(products_list)


puts "----------------------------"
puts "                         "
puts "Price with VAT: "
total(products_list)
puts ".................................."


