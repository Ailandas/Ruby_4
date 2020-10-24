# frozen_string_literal: true

load 'Masyvas.rb'

main_array = []
user_moves = []

def print_choices
  puts("1-Masyvo sukurimas, nuskaitant duomenis is duomenu failo.\n")
  puts("2-Masyvo sukurimas, suvedant duomenis is klaviaturos.\n")
  puts("3-Masyvo spausdinimas didejancia tvarka.\n")
  puts("4-Masyvo spausdinimas mazejancia tvarka. \n")
  puts("5-Masyvo visu elementu vidurkis.\n")
  puts("6-Maksimalaus elemento radimas.\n")
  puts("7-Maksimaliu elementu kiekis.\n")
  puts("8-Masyvo elementu sandauga.\n")
  puts("9-Visu pries tai vykdytu funkciju rezultatu spausdinimas.\n")
  puts("0-Iseiti\n")
end

array = Masyvas.new
cicle = 1
while cicle != 0
  print_choices
  choice = gets # User input
  choice = choice.to_i # Input to integer
  case choice
  when 0
    puts('exited')
    cicle = 0
  when 1
    main_array = array.read_from_file('data.txt')
    puts('Sekmingai nuskaityta is duomenu failo')
    user_moves << 1
  when 2
    main_array = array.read_from_keyboard(main_array)
    puts('Sekmingai nuskaityta is klaviaturos')
    user_moves << 2
  when 3
    main_array = array.bubble_sort_upwards(main_array)
    puts(main_array)
    user_moves << 3
  when 4
    main_array = array.bubble_sort_downwards(main_array)
    puts(main_array)
    user_moves << 4
  when 5
    avg = array.average(main_array)
    puts("Vidurkis: #{avg}")
    user_moves << 5
  when 6
    puts("Didziausias elementas: #{main_array.max}")
    user_moves << 6
  when 7
    puts("Max elementu kiekis: #{array.max_count(main_array)}")
    user_moves << 7
  when 8
    puts("Visu elementu sandauga:  #{array.array_elements_multiplicated(main_array)}")
    user_moves << 8
  when 9
    puts("Naudotojo naudotos funkcijos: #{user_moves}")

  else
    puts('Tokio pasirinkimo nera')
  end

end
