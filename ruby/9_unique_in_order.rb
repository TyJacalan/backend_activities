def unique_in_order(sequence)
    ordered_sequence = []

    if sequence.is_a?(String)
        sequence.each_char do |item|
            add_to_ordered_sequence(ordered_sequence, item)
        end
    elsif sequence.is_a?(Array)
        sequence.each do |item|
            add_to_ordered_sequence(ordered_sequence, item)
        end
    end

    ordered_sequence
end

def add_to_ordered_sequence(arr, item)
    if arr.empty? || arr.last != item
        arr.push(item)
    end
end

puts unique_in_order('AAABBBCCDAABBB')
puts unique_in_order('ABBCcAD')
puts unique_in_order([1, 2, 2, 3, 3])