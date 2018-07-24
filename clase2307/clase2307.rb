class Telefono  
    
    def initialize
        @estado = 'Disponible' #Disponible - Ocupado
        @llamadaActual = ''
        @historialLlamadas = []
        @llamadaActual = {}        
    end

    def llamar(nombre, telefono)   
        puts "Llamando..."
        if(@estado == 'Ocupado')     
            puts "Telefono Ocupado..."
        else
            @llamadaActual = {nombre: nombre, telefono: telefono, horaInicio: Time.now, horaFinal: ''}
            @historialLlamadas.push(@llamadaActual)
            @estado = 'Ocupado'
        end
    end

    def mostrarLlamadaActual()
        if(@estado == 'Disponible')     
            puts "No estamos en una llamada..."
        else
            puts "Llamada actual #{@llamadaActual}"
        end
             
    end

    def colgar
        @estado = 'Disponible'
        @llamadaActual = {}
        #ir por el ùltimo del array y modificarle el tiempo, primero vamos a probar como vamos

    end

    def historialDeLlamadas()
        puts "Historial de llamadas..."

        @historialLlamadas.each do |element|
            puts element
          end
    end
end

  opcion = 1
  myTel = Telefono.new

  while opcion < 5 && opcion > 0
    puts "TELEFONO"
    puts "Opciones"
    puts "1. Llamar"
    puts "2. Colgar"
    puts "3. Mostrar llamada actual"
    puts "4. Mostrar historial de llamadas"
    puts "5. Quit"
    opcion = gets.chomp.to_i

    case opcion
    when 1
        puts "Indique el nombre de la persona que va a llamar."
        nombre = gets.chomp
        puts "Indique el Telefono."
        telefono = gets.chomp
        myTel.llamar(nombre,telefono)
    when 2
        myTel.colgar()
    when 3
        myTel.mostrarLlamadaActual()
    when 4
        myTel.historialDeLlamadas()
    else
        puts "ADIOS..."    
    end

  end
  