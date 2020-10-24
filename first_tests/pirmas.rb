# frozen_string_literal: true

# Visu lyginiu skaiciu sandauga [10;20]
def funkcija()
intervalo_pradzia = 10
sandauga = 1
while intervalo_pradzia <= 20
  sandauga *= intervalo_pradzia if intervalo_pradzia.even?
  intervalo_pradzia += 1
end
return sandauga
end
