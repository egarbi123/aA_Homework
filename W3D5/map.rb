class Map

    def initialize
        @map = []
    end

    def set(key, val)
        @map.each_with_index do |pair, i|
            if pair[0] == key
                @map[i][0] = key
                @map[i][1] = val
                return
            end
        end
        @map << [key, val]
    end

    def get(key)
        @map.each do |pair|
            if pair[0] == key
                return pair[1]
            end
        end
    end

    def delete(key)
        @map.each_with_index do |pair, i|
            if pair[0] == key
                @map.delete_at(i)
            end
        end
    end

    def show
        @map
    end

end