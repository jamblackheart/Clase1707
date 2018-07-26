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

class Fax < Telefono  
    attr_accessor :horarioBase
    
    def initialize(horario)
        @horarioDesdeNo = horario[:available].to_s.split('-')[0]
        @horarioHastaNo = horario[:available].to_s.split('-')[1]
        @mensajeContestadora = horario[:custom_message]
        super()

        puts @horarioDesdeNo
        puts @horarioHastaNo
        puts @mensajeContestadora

        #@horarioBase = horario
        #puts @horarioBase
    end

    private

    def contestadora 
    end 
end

class CellPhone < Telefono  

end

myfax = Fax.new({available: "8-17", custom_message: "gracias por llamar en este momento..."})

# myfax2 = Fax.new({available: "8-17", custom_message: "gracias por llamar en este momento..."})

# myfax3 = Fax.new({available: "8-17", custom_message: "gracias por llamar en este momento..."})

# myfax4 = Fax.new({available: "8-17", custom_message: "gracias por llamar en este momento..."})
# #myfax = Telefono.new
# # myTel2 = Telefono.new
# # myTel3 = Telefono.new
# myfax.mostrarLlamadaActual()
# myfax.llamar('Jairo','2342161')
# sleep 3
# myfax.colgar()
# myfax.mostrarLlamadaActual()
# myfax.historialDeLlamadas()
# myfax.verContactos()
# myfax.agregarNumero('Jairo2','2342161')
# myfax.llamar('Jairo','2342161')
# sleep 3
# myfax.colgar()
# myfax.historialDeLlamadas()
# puts myfax.horarioBase

# puts "El total de segundos es #{Fax.totalSegundos} usando #{Fax.totalCelulares} dispositivos" 