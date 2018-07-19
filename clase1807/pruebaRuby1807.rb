# numeroElemetos = ARGV[0].to_i
# arrayEjemplo = []
# suma = 0;
# promedio = 0;
# agregado = 0;
# pares = 0;
# impares = 0;

# numeroElemetos.times do |i|
#     agregado = rand(1...100)
#     if agregado%2 == 0
#         pares+=1
#     else 
#        impares+=1
#     end
    
    
#     arrayEjemplo.push(agregado)
#     suma += agregado
#   end
  

#   promedio = suma / numeroElemetos
  
#   puts arrayEjemplo

#   puts "la suma de elementos es: " + suma.to_s
#   puts "el promedio de elementos es: " + promedio.to_s
#   puts "el total de pares es : " + pares.to_s
#   puts "el total de impares es es: " + impares.to_s

 #telefonicos con nombres al 
agenda = []
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


  puts "Los datos son #{persona}"












