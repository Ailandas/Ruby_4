load "masyvas.rb" #Failas, kuriame metodai, trecias.rb #
#pagrinde issikvieciami jie (UI)
require 'test/unit' #Test framework
$masyvas = Masyvas.new #Naujas objektas masyvas.rb
class TestMasyvas < Test::Unit::TestCase
  def test_readFile_pass

    expected=[2,6,7,9,8,21,1,2,3,5,1,21] #Prisiskiriu tiketina masyva
    actual=$masyvas.read_from_file("data.txt") #Nusiskaitu realu
    assert_equal(expected,actual) #Jei tiketas ir tikras true, pass
  end
  def test_readFile_fail

    expected=[2,6,7,9,8,21,1,2,3,5,1,7] #Prisiskiriu tiketina masyva (21!=7)
    actual=$masyvas.read_from_file("data.txt") #Nusiskaitu realu
    assert_not_equal(expected,actual) #Laukiu failo, nesutapimo
  end
  def test_bubble_sort_upwards_pass
    array=$masyvas.read_from_file("data.txt")#duomenys is failo
    actual=$masyvas.bubble_sort_upwards(array) #Surikiuoju
    expected=[1,1,2,2,3,5,6,7,8,9,21,21] #Rezultatas toks turetu buti
    assert_equal(expected,actual)
  end
  def test_bubble_sort_upwards_fail
    array=$masyvas.read_from_file("data.txt")#duomenys is failo
    actual=$masyvas.bubble_sort_upwards(array) #Surikiuoju
    expected=[1,1,2,2,3,5,6,8,7,9,21,21];#Rezultate skaicius 7 ir 8 apkeistas vietomis
    assert_not_equal(expected,actual)
  end

  def test_bubble_sort_downwards_pass
    array=$masyvas.read_from_file("data.txt")#duomenys is failo
    actual=$masyvas.bubble_sort_downwards(array) #Surikiuoju
    expected=[21,21,9,8,7,6,5,3,2,2,1,1] #Rezultatas toks turetu buti
    assert_equal(expected,actual)
  end
  def test_bubble_sort_downwards_fail
    array=$masyvas.read_from_file("data.txt")#duomenys is failo
    actual=$masyvas.bubble_sort_downwards(array) #Surikiuoju
    expected=[21,21,9,8,7,6,5,3,2,1,2,1] #Rezultate 1 ir 2 vietomis apkeiciau
    assert_not_equal(expected,actual)
  end
  def test_max_elementu_skaiciaus_radimas_pass
    array=$masyvas.read_from_file("data.txt")#duomenys is failo
    expected=2 # faile 2 yra 21
    actual=$masyvas.max_count(array) #pasinaudoju metodu kur randa max elementu
    #kieki
    assert_equal(expected,actual) #lyginu
  end
  def test_max_elementu_skaiciaus_radimas_fail
    array=$masyvas.read_from_file("data.txt")#duomenys is failo
    expected=1 # faile 2 yra 21,
    actual=$masyvas.max_count(array) #pasinaudoju metodu kur randa max elementu
    #kieki
    assert_not_equal(expected,actual)#lyginu
  end

  def test_sandauga_masyvo_pass
    array=$masyvas.read_from_file("data.txt")#duomenys is failo
    expected=80015040 #Sandauga visu elementu
    actual=$masyvas.array_elements_multiplicated(array) #pasinaudoju metodu
    # kur randa sandauga
    assert_equal(expected,actual)#lyginu
  end
  def test_sandauga_masyvo_fail
    array=$masyvas.read_from_file("data.txt")#duomenys is failo
    expected=80015041 #Nurodau neteisinga sandauga
    actual=$masyvas.array_elements_multiplicated(array) #pasinaudoju metodu
    # kur randa sandauga
    assert_not_equal(expected,actual)#lyginu
  end
end
