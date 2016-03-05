notes = []
puts "Start typing now. Enter a blank line to stop"
note = gets.chomp
while note != ''
  notes << note
  note = gets.chomp
end

# puts notes.sort

def sort_me(arr)
  arr.each_with_index do |element, i|
    break if arr[i] == arr.last
    p arr
    puts "comparing #{arr[i]} with #{arr[i + 1]}"
    if arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
    end
    arr = arr[0..i] << sort_me(arr[i + 1..-1])
  end
  arr
end

p notes
notes = sort_me(notes).flatten
p "Notes: #{notes}"
