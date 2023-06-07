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

        tablero.each_with_index do |row, i|
            row.each_with_index do |column, j|
                if tablero[i][j] == "*"
                    indice_celula_viva.push([i,j])
                end
            end
        end

        indice_celula_viva.each do |i, j|
            colum = j
            if i < tablero.length - 1
            puts "i: #{i} j: #{j}"
                if tablero[i][colum + 1 ] == ("." || nil)
                    puts "#{tablero[i][j+1]}"
                    if tablero[i][colum - 1] == ("." || nil)
                        puts "#{tablero[i][j-1]}"
                        if tablero[i+1][j] == ("." || nil)
                            puts "#{tablero[i+1][j]}"
                            if tablero[i-1][j] == ("." || nil)
                                puts "#{tablero[i-1][j]}"
                                if tablero[i+1][j+1] == ("." || nil)
                                    puts "#{tablero[i+1][j+1]}"
                                    if tablero[i-1][j-1] == ("." || nil)
                                        puts "#{tablero[i-1][j-1]}"
                                        if tablero[i+1][j-1] == ("." || nil)
                                            puts "#{tablero[i+1][j-1]}"
                                            if tablero[i-1][j+1] == ("." || nil)
                                                puts "#{tablero[i-1][j+1]}"
                                                tablero[i][j] = "."
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
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
