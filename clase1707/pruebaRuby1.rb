#comentario de ruby
puts "Practica Ruby 1 - JAM"

name = "";
puts 'Hola, indique su nombre: '
name = gets.chomp

puts "Hola \"#{name}\""

puts 'Vamos a adivinar un numero... '

puts 'Indique el número: '
primer = gets.chomp.to_i
numero =  Random.new.rand(1..10)

print "El número del sistema es: #{numero} "
if(numero == primer)
    puts " ADIVINASTE!!!"
else
    puts " JAJAAJ Lo siento"
end

#puts 'Indique el segundo número: '
#segundo = gets.chomp.to_i
#puts "La suma de los número es: #{primer+segundo}"

puts "Este es el final del programa"
