class GameLife
    def start_game(row, columns)
        tablero = []
        for i in(0...row)
            tablero.insert(i, []);
            for j in(0...columns)
                if rand(0..10) == 1
                    tablero[i].insert(j, "*")
                else
                    tablero[i].insert(j, ".")
                end
            end
            puts "#{tablero[i].join(" ")}"
        end

        return tablero
    end

    def next_generation(tablero)
        indice_celula_viva = []
        celulas_vivas_vecinas = 0

        tablero.each_with_index do |row, i|
            row.each_with_index do |column, j|
                if tablero[i][j] == "*"
                    indice_celula_viva.push([i,j])
                end
            end
        end

        indice_celula_viva.each do |i, j|
            if i <= tablero.length - 1

                if i == 3
                    if tablero[i][j+ 1 ] == ("*")
                        celulas_vivas_vecinas+= 1
                    end
                    if tablero[i][j - 1] == ("*")
                        celulas_vivas_vecinas+= 1
                    end
                    if tablero[i-1][j] == ("*")
                        celulas_vivas_vecinas+= 1
                    end
                    if tablero[i-1][j-1] == ("*")
                        celulas_vivas_vecinas+= 1
                    end
                    if tablero[i-1][j+1] == ("*")
                        celulas_vivas_vecinas+= 1
                    end
                    if celulas_vivas_vecinas < 2
                        tablero[i][j] = "."
                    end
                    if celulas_vivas_vecinas > 3
                        tablero[i][j] = "."
                    end
                    if celulas_vivas_vecinas == (2 || 3)
                        tablero[i][j] = "*"
                    end

                    if celulas_vivas_vecinas < 2
                        tablero[i][j] = "."
                    end
                    if celulas_vivas_vecinas > 3
                        tablero[i][j] = "."
                    end
                    if celulas_vivas_vecinas == (2 || 3)
                        tablero[i][j] = "*"
                    end
                end
                if j == 0
                    if tablero[i][j + 1 ] == ("*")
                        celulas_vivas_vecinas+= 1
                    end
                    if tablero[i+1][j] == ("*")
                        celulas_vivas_vecinas+= 1
                    end
                    if tablero[i-1][j] == ("*")
                        celulas_vivas_vecinas+= 1
                    end
                    if tablero[i+1][j+1] == ("*")
                        celulas_vivas_vecinas+= 1
                    end
                    if tablero[i-1][j+1] == ("*")
                        celulas_vivas_vecinas+= 1
                    end
                    
                    if celulas_vivas_vecinas < 2
                    
                        tablero[i][j] = "."
                    
                    end
                    
                    if celulas_vivas_vecinas > 3
                    
                        tablero[i][j] = "."
                    
                    end
                    
                    if celulas_vivas_vecinas == (2 || 3)
                        tablero[i][j] = "*"
                    end
                end
            puts "i: #{i} j: #{j}"
                if tablero[i][j+ 1 ] == ("*")
                    celulas_vivas_vecinas+= 1
                end
                if tablero[i][j - 1] == ("*")
                    celulas_vivas_vecinas+= 1
                end
                if tablero[i+1][j] == ("*")
                    celulas_vivas_vecinas+= 1
                end
                if tablero[i-1][j] == ("*")
                    celulas_vivas_vecinas+= 1
                end
                if tablero[i+1][j+1] == ("*")
                    celulas_vivas_vecinas+= 1
                end
                if tablero[i-1][j-1] == ("*")
                    celulas_vivas_vecinas+= 1
                end
                if tablero[i+1][j-1] == ("*")
                    celulas_vivas_vecinas+= 1
                end
                if tablero[i-1][j+1] == ("*")
                    celulas_vivas_vecinas+= 1
                end
                if celulas_vivas_vecinas < 2
                    tablero[i][j] = "."
                end
                if celulas_vivas_vecinas > 3
                    tablero[i][j] = "."
                end
                if celulas_vivas_vecinas == (2 || 3)
                    tablero[i][j] = "*"
                end
            end
        end

        tablero.each_with_index do |row, i|
            puts "#{tablero[i].join(" ")}"
        end
    end
end

tablero = GameLife.new.start_game(4,8)
puts "-------------------------"
puts "Next generation"
first_generation = GameLife.new.next_generation(tablero)
