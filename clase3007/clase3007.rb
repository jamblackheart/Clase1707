class Menu
     
    def initialize
        my_menu = IO.readlines("menu.txt")
        @menu = []
        @texto_menu = []
        @texto_menu.push("Menu")
        @texto_menu.push("")
        @texto_menu.push("#{'Código'.ljust(10)} - #{'Nombre'.ljust(20)} - #{'Precio'.rjust(5)}" )
    
        my_menu.each do |elementos| 
            arr_menu = elementos.split(",")
            menu1 = {Código: arr_menu[0], Nombre: arr_menu[1], Precio: arr_menu[2]}
            @texto_menu.push("#{arr_menu[0].ljust(10)} - #{arr_menu[1].ljust(20)} - #{arr_menu[2].rjust(5)}" )
            @menu.push(menu1)        
        end
    
    end
    
    def mostrarMenu
        #puts @menu
        puts @texto_menu
    end
    
    def consultaProducto(codigo)
        @menu.each do |elementos|
            if codigo == elementos[:Código]
                puts "#{elementos[:Nombre]}: su precio es #{elementos [:Precio]}"
            end   
        end 
    end


    def agregarProducto
        puts" Introduce el codigo del producto que quieres agregar"
        codigo = gets.chomp
        
        puts" Introduce el nombre del producto que quieres agregar"
        nombre = gets.chomp
        
        puts" Introduce el precio del producto que quieres agregar"
        precio = gets.chomp
        
        disponible = true
        
        menu1 = {Código: codigo, Nombre: nombre, Precio: precio}
        @texto_menu.push("#{codigo.ljust(10)} - #{nombre.ljust(20)} - #{precio.rjust(5)}" )
        @menu.push(menu1) 

        File.open('menu.txt','a') { |file| file.puts("#{codigo},#{nombre},#{precio},#{disponible}\n")}
      
    end
end

miMenu = Menu.new
miMenu.mostrarMenu
miMenu.agregarProducto
miMenu.mostrarMenu
    