def suffixes_of(str)
  arr = str.split('')
  arr.size.times.to_a.map { |i| arr.drop i }.map &:join
end

def similarity(str, sufix)
  total = 0
  (0...sufix.size).each do |i|
    if str[i] == sufix[i]
      total += 1
    else
      break
    end
  end
  puts "#{sufix} - #{total}"
  total
end


# strings = ["ababa", "ababaa"] #, "ababa"]
strings = [
  'edbbaacdcaacacbababaabadeeeaaddecaaeceeecbdcdaeacaccccaddeaaddecdcdcdccadcacceeecdcbceecebde',
  'dadbccabcdeccbcdbedaaabbdccdddcbdbebdeca',
  'aeaeddabaacbdcecacccbbacededbecbaccdccccebacdbbaedecbaeadaebedeccbaedcdcdabdcedbddabaeeaadcbdd',
  'abbdaedeeeedeaeeabcabbadbebedcedaadabbbddbbebdabecdcbdcc',
  'cddddabbaeaccaabedebbaaeabccecddcdbaaecbeeadeaeadabeddadaccbcdeebcacceaddabccdccaaddddd',
  'bbeeabcadeecbcadae',
  'dcbaceaadbdeceaaccaaeecadeedabeaecadbbebeecbdcddaadbbdbeecaaebcadddbb',
  'adcdeaccccaaeabaaeaaabeaecdbadbabdecadeeacebcdcceceebeecdeaeebbbccaeacedeaeddbd',
  'ed',
  'ebeecaddbbceecebdeadedecddddecddecebeabbbecabdbeddeceabc'
]


similarities = strings.map do |str|
  suffixes = suffixes_of str
  puts "suffixes: #{suffixes}"

  suffixes.map { |suf| similarity(str, suf) }.sum
end

puts "result: #{similarities.join(' ')}"
