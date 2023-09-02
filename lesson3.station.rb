

class Station
attr_accessor :name, :trains

  def initialize (name, trains)
   @name = name
   @trains = []
end

#вводим в пустой массив приезжающий поезд
def arrive(train)
@trains << train
end

#удаляем из массива поезд который уехал
def send(train)
trains.delete(train)
end

#показывает какие поезда на станции
def show_trains
trains.each {|train|} train}
end

#делим на грузовые и пассажирские

def types_trains(train)
if
  trains.partition {|train| train == "cargo"}
else 
  puts "passenger"

end






