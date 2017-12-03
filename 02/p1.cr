def find_minmax_diff(ints)
  minmax = ints.minmax
  minmax[1] - minmax[0]
end

def prepare_input(input)
  spreadsheet = [] of Array(Int32)
  input.each_line { |line|
    spreadsheet << line.split(/\s+/).map{ |n| n.to_i32 }
  }
  spreadsheet
end


input = prepare_input File.read "input.txt"
puts input.map { |row| find_minmax_diff row }.sum
