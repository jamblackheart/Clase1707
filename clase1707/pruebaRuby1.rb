#comentario de ruby
puts "Practica Ruby 1 - JAM"

name = "";
puts 'Hola, indique su nombre: '
name = gets.chomp

puts "Hola \"#{name}\""

puts 'Vamos a calcular su BMI... '

puts 'Indique su peso(kl): '
peso = gets.chomp.to_f
#numero =  Random.new.rand(1..10)

puts 'Indique su altura(mtrs): '
altura = gets.chomp.to_f

bmi = peso / (altura * altura)

print "su indice BMI es: #{bmi} "

if(bmi < 18.5)
    puts " BAJA DE PESO!!!"
elsif (bmi > 25)
    puts " JAJAAJ SOBREPESO"
else
    puts " NORMAL"
end

#puts 'Indique el segundo número: '
#segundo = gets.chomp.to_i
#puts "La suma de los número es: #{primer+segundo}"

puts "Este es el final del programa"
