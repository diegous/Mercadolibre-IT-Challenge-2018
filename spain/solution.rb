total_chars = 171024
title_len   = 12825
max_page    = 14359

page_number = 7
page = title_len + page_number

result = (1..120).select do |i|
  per_page_chars = total_chars / i.to_f + title_len

  i if per_page_chars <= max_page
end

puts result.min
