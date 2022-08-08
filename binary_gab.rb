def solution(n)
  # write your code in Ruby 2.2
  binary = n.to_s(2)

  tmp = []
  nil_collection = []

binary.each_char do |c|
  if c == "1"
    unless tmp.empty?
      nil_collection << tmp.length
      tmp = []
    end
    else
      tmp << c
    end
  end

  if nil_collection.empty?
    return 0
  else
    return nil_collection.max
  end
end
