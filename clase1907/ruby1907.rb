#Strings practices

# puts "Por favor indique una cadena"
# cadena = gets.chomp.upcase
# cadenaInv = cadena.upcase.reverse
# if cadena == cadenaInv
#     puts "Su cadena es: #{cadena}, e invertida:  #{cadenaInv} y es un palindrome"
# else
#     puts "Su cadena es: #{cadena}, e invertida:  #{cadenaInv} y es no un palindrome" 
# end

def registrarNumero
  persona = {}

  nombre = ""
  telefono = ""
    while nombre != 'quit'

      puts "Por favor indique cual es su nombre, si no desea agregarlo digite 'quit'"
      nombre = gets.chomp
      if(nombre != 'quit')
          puts "Por favor indique cual es su número de telefono"
          telefono = gets.chomp
          persona[nombre] = telefono
          #persona => {nombre: telefono}
      end
      # acá va el código que se va a repetir mientras la condición sea verdadera
    end

    return persona

  end

puts "Los datos son #{registrarNumero}"



