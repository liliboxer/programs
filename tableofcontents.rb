line_width = 50
puts "Table of Contents".center(line_width)
puts
chapters = [["Chapter 1: ", "Getting Started", "page 1"], ["Chapter 2: ", "Numbers", "page 9"],
["Chapter 3: ", "Letters", "page 13"]]
chapters.each do |chapter, title, page|
  puts chapter + title + page.rjust(line_width - (chapter.length + title.length))
end
