class GameLife
    def mostrar_pista(row, columns)
        tablero = []
        for i in(0...row)
            tablero.insert(i, []);
            for j in(0...columns)
                tablero[i].insert(j, "*")
            end
            puts "#{tablero[i]}"
        end
    end
end

GameLife.new.mostrar_pista(4,8)
