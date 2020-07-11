def menu
    puts 'Elige tu arma:'
    puts '-----------------'
    puts '1 - piedra'
    puts '2 - Papel'
    puts '3 - Tijera'
    puts '4 - Salir'
    puts 'Escribe "salir" para salir del programa'    
end

def game(jugador1,jugador2)
    case
    when jugador1 == '1'
        if jugador2 == '1'
            puts "Piedra y piedra!"
            puts "Es un empate! Inténtalo de nuevo"
            puts "Adios"
            exit(true)  
        elsif jugador2 == '2' 
            puts "¡El papel supera a la piedra!"
            puts "jugador 2 gana!"
            puts "Adios"
            exit(true)
        elsif jugador2 == '3' 
            puts "piedra supera tijera!"
            puts "jugador 1 gana!"
            puts "Adios"
            exit(true)
        end
    when jugador1 == '2'  
        if jugador2 == '1' 
            puts "Papel supera piedra!"
            puts "jugador 1 gana!"
            puts "Adios"
            exit(true)
        elsif jugador2 == '2' 
            puts "Papel igual Papel!"
            puts "ha habido un empate! intenta de nuevo"
            puts "Adios!"
            exit(true)
        elsif jugador2 == '3'
            puts "Tijera supera papel!"
            puts "jugador 2 gana!"
            puts "Adios!"
            exit(true)
        end
    when jugador1 == '3' 
        if jugador2 == '1'
            puts "piedra supera Tijera!"
            puts "jugador 2 ganaste!"
            puts "Adios!"
            exit(true)
        elsif jugador2 =='2'
            puts "Tijera supera papel!"
            puts "jugador 1 ganaste!"
            puts "Adios!"
            exit(true)
        elsif jugador2 == '3'
            puts "Tijera y tijera!"
            puts "ha habido un empate! intenta de nuevo"
            puts "Adios!"
            exit(true)
        end 
    else 
        puts'opcion invalida'
        puts 'intentalo de nuevo!'
    end

end

jugador1 = ARGV[0]
player2 = ARGV[0]

while jugador1 != 'Salir' || jugador2 != 'Salir'  
    puts 'Bienvenido al juego =)'
    puts 'turno del jugador 1:'
    menu 
    puts 'Elige tu arma jugador1:'
    jugador1 = gets.chomp.downcase 
        if jugador1 == '4' || jugador1 == 'salir'
            puts 'Te marchas?... Adios !'
            salir
        end    
        
        while jugador1 > '4' || jugador1 == '0' || jugador1 == ' '
           
            puts 'Opción invalida'
            puts 'Intenta de nuevo!'
            menu 
            puts 'elige un arma jugador1:'
            jugador1 = gets.chomp.downcase 
                if jugador1 == '4' || jugador1 == 'salir'
                    puts 'Te marchas?... Adios!'
                    salir
                end    
        end

    puts 'Tu turno jugador 2:'
    menu
    puts 'Elige tu arma jugador 2:'    
    jugador2 = gets.chomp.downcase 
        if jugador2 == '4' || jugador2 == 'salir'
            puts  'Te marchas?... Adios!'
            salir
        end    

        while jugador2 > '4' || jugador2 == '0' || jugador2 == ' '
            puts 'Opción invalida'
            puts 'Intenta de nuevo!'
            menu 
            puts 'Elige tu arma jugador 2:'
            jugador2 = gets.chomp.downcase 
                if jugador2 == '4' || jugador2 == 'salir'
                    puts  'Te marchas?... Adios!'
                    salir
                end    
        end

    game(jugador1, jugador2)

end
