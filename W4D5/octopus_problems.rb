all_fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']


def sluggish_octopus(array)
    longest_fish = array[0]
    (0...array.length).each do |i|
        (0...array.length).each do |j|
            longest_fish = array[i] if array[i] > array[j]
        end
    end
    longest_fish
end

p sluggish_octopus(all_fish) # "fiiiissshhhhhh"

def dominant_octopus(array)
    longest_fish = array[0]
    (0...array.length).each do |i|
        (i...array.length).each do |j|
            longest_fish = array[j] if array[i].length < array[j].length
        end
    end
    longest_fish
end

p dominant_octopus(all_fish)

def clever_octopus(array)
    longest_fish = array[0]
    array.each { |ele| longest_fish = ele if ele.length > longest_fish.length}
    longest_fish
end

p clever_octopus(all_fish)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(command, array)
    array.each.with_index do |ele, i|
        return i if command == ele
    end
end

p slow_dance("up", tiles_array) # 0
p slow_dance("right-down", tiles_array) # 3

new_tiles_data_structure = { 
    "up" => 0, 
    "right-up" => 1,
    "right" => 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7 
}

def fast_dance(command, hash)
    hash[command]
end

p fast_dance("up", new_tiles_data_structure) # 0
p fast_dance("right-down", new_tiles_data_structure) # 3

