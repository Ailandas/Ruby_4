#frozen_string_literal: true

def double(ivesti_duomenys)
array_of_data = []
array_of_data = ivesti_duomenys.split(//)
new_string_content = ''
array_of_data.each_with_index do |value, index|
  new_string_content = new_string_content + value + value if index < array_of_data.length
end
return new_string_content
end
