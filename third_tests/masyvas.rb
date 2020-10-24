# frozen_string_literal: true

# Klase skirta skaiciuoti masyvo duomenis
class Masyvas
  def read_from_file(input_file_name)
    f = File.open(input_file_name)
    contents_array = []
    f.each_line { |line| contents_array << line }
    f.close
    array_of_string = []
    array_of_string << contents_array[0].split(',')
    array_of_integers = array_of_string[0].map(&:to_i)
    array_of_integers
  end

  def read_from_keyboard(array)
    user_input = ' '
    until user_input['done']
      puts("Iveskite elementa:\n")
      puts("noredami baigti parasykite done\n")
      user_input = gets
      array << user_input.to_i if number?(user_input)
    end
    array
  end

  def number?(string)
    true if Float(string)
  rescue StandardError
    false
  end

  def bubble_sort_upwards(array)
    return array if array.length <= 1

    array_length = array.size
    bubble_sort_up(array, array_length)
    array
  end

  def bubble_sort_up(array, array_length)
    loop do
      swapped = false
      (array_length - 1).times do |i|
        if array[i] > array[i + 1]
          array[i], array[i + 1] = array[i + 1], array[i]
          swapped = true
        end
      end
      break unless swapped
    end
  end

  def average(array)
    sum = 0
    array.each_with_index do |value, _index|
      sum += value
    end
    sum / array.length.to_f
  end

  def bubble_sort_downwards(array)
    return array if array.length <= 1

    array_length = array.size
    bubble_sort_down(array, array_length)
    array
  end

  def bubble_sort_down(array, array_length)
    loop do
      swapped = false
      (array_length - 1).times do |i|
        if array[i] < array[i + 1]
          array[i], array[i + 1] = array[i + 1], array[i]
          swapped = true
        end
      end
      break unless swapped
    end
  end

  def max_count(array)
    max_element = array.max
    array.count(max_element)
  end

  def array_elements_multiplicated(array)
    multiple = 1
    array.each_with_index do |value, _index|
      multiple *= value
    end
    multiple
  end
end
