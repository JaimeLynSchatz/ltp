notes = []
puts "Start typing now. Enter a blank line to stop"
note = gets.chomp
while note != ''
  notes << note
  note = gets.chomp
end

# puts notes.sort

def swap(arr, i)
  
  arr
end

def sort_me(arr)
  for i in 0...(arr.length - 1)
    return arr if arr.length == 1
    if arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      sort_me(arr)
    end
  end
  arr
end

p notes
notes = sort_me(notes)
p "Notes: #{notes}"
