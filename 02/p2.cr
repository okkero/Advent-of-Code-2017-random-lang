def find_even_division(ints) : Int32
  i = 0
  while i < ints.size
    a = ints[i]
    j = i + 1
    while j < ints.size
      b = ints[j]
      biggest = Math.max(a, b)
      smallest = Math.min(a, b)
      if biggest % smallest == 0
        return biggest / smallest
      end
      j += 1
    end
    i += 1
  end

  0
end


def prepare_input(input) : Array(Array(Int32))
  spreadsheet = [] of Array(Int32)
  input.each_line { |line|
    spreadsheet << line.split(/\s+/).map{ |n| n.to_i32 }
  }
  spreadsheet
end


input = prepare_input File.read "input.txt"
puts input.map { |row| find_even_division row }.sum
