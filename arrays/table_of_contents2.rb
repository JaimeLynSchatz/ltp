# whoops, already used an array for this
heading = 'Table of Contents'
chapters = [
            'Chapter 1: Numbers',
            'Chapter 2: Letters',
            'Chapter 3: Variables'
           ]

page_numbers = [
                'page 1',
                'page 72',
                'page 118']

lineWidth = 40
puts heading.center(lineWidth)
puts ''
chapters.each_with_index do |chapter, i|
  puts "#{chapter.ljust(lineWidth/2)} #{page_numbers[i].rjust(lineWidth/2)}"
end
