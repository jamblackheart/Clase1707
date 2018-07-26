require 'pry'

class Telefono    
    attr_accessor :estado

    @@segundosTotales = 0
    @@conta = 0
     
    def initialize
        

        @estado = 'Disponible' #Disponible - Ocupado
        @llamadaActual = ''
        @historialLlamadas = []
        @llamadaActual = {}  
        @directorio = IO.readlines("directorio.txt")
        @@conta += 1
        #@contactos =       
    end

    def agregarNumero(nombre, telefono)
        File.open("directorio.txt", 'a') { |file| file.puts("#{nombre};#{telefono}") }
        #File.write("directorio.txt", "#{nombre};#{telefono}")
        @directorio.push("#{nombre};#{telefono}")

        puts "Telefono Agregado..."
    end

    def verContactos()
        puts @directorio
    end


    def llamar(nombre, telefono)   
        puts "Llamando..."
        if(@estado == 'Ocupado')     
            puts "Telefono Ocupado..."
        else
            @llamadaActual = {nombre: nombre, telefono: telefono, horaInicio: Time.now, horaFinal: nil}
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
        
        @historialLlamadas[@historialLlamadas.length - 1][:horaFinal] = Time.now
        
        @historialLlamadas[@historialLlamadas.length - 1][:segundosLlamada] = (@historialLlamadas[@historialLlamadas.length - 1][:horaFinal] - @historialLlamadas[@historialLlamadas.length - 1][:horaInicio]).to_i
        @@segundosTotales += @historialLlamadas[@historialLlamadas.length - 1][:segundosLlamada].to_i
        #ir por el ùltimo del array y modificarle el tiempo, primero vamos a probar como vamos
    end

    def historialDeLlamadas()
        puts "Historial de llamadas..."
        @historialLlamadas.each do |element|
            puts element
          end
    end


    def self.totalSegundos()
        @@segundosTotales
    end

    def self.totalCelulares()
        @@conta
    end

end

  opcion = 1
  myTel = Telefono.new
  myTel2 = Telefono.new
  myTel3 = Telefono.new

  while opcion < 7 && opcion > 0
    puts "TELEFONO"
    puts "Opciones"
    puts "1. Llamar"
    puts "2. Colgar"
    puts "3. Mostrar llamada actual"
    puts "4. Mostrar historial de llamadas"
    puts "5. Ver libreta de contactos"
    puts "6. Agregar contacto"
    puts "7. Quit"
    opcion = gets.chomp.to_i

    case opcion
    when 1
        if(myTel.estado == 'Disponible')
        puts "Indique el nombre de la persona que va a llamar."
        nombre = gets.chomp
        puts "Indique el Telefono."
        telefono = gets.chomp
        myTel.llamar(nombre,telefono)
        else
            puts "Telefono ocupado..."
        end
    when 2
        myTel.colgar()
    when 3
        myTel.mostrarLlamadaActual()
    when 4
        myTel.historialDeLlamadas()
    when 5
        myTel.verContactos()
    when 6
        puts "Indique el nombre de la persona que va a llamar."
        nombre = gets.chomp
        puts "Indique el Telefono."
        telefono = gets.chomp
        myTel.agregarNumero(nombre,telefono)
        
    else
        puts "ADIOS..."    
    end

  end

  puts "El total de segundos es #{Telefono.totalSegundos} usando #{Telefono.totalCelulares} dispositivos"


  