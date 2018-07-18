#comentario de ruby
puts "Practica Ruby 1 - JAM"

name = "";
puts 'Hola, indique su nombre: '
name = gets.chomp

puts "Hola \"#{name}\""

puts 'Vamos a sumar dos numero... '

puts 'Indique el primer número: '
primer = gets.chomp.to_i
puts 'Indique el segundo número: '
segundo = gets.chomp.to_i
puts "La suma de los número es: #{primer+segundo}"
