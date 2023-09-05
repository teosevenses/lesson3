class Train

attr_accessor :speed, :station_now :route
attr_reader :number_of_wagons, :type

  def initialize(number, type, number_of_wagons)
    @number = number
    @type = type
    @number_of_wagons= number_of_wagons
    @speed = 0
  end
#набирает скорость
  def speedup
    @speed += 1 
  end
#снижает скорость
  def speed_down
    @speed -= 1 if @speed != 0
  end
#останавливается, если скорость равна нулю
  def stop
    @speed == 0
  end
#прицепляет вагон
  def attach_wagon
    @number_of_wagons += 1 if @speed == 0
  end
#отцепляет вагон
  def detach_wagon
    @number_of_wagons -= 1 if @speed == 0 && @number_of_wagons != 0
  end
#принимает маршрут следования
  def takeroute(route)
    @route = route
    @station_now_index = 0
    @station_now.add_train(self)
  end
#станция сейчас
  def station_now
    route.stations[@station_now_index]
  end
#следующая станция
  def next_station
    route.stations[@station_now_index + 1]
  end
#предыдущая станция
  def past_station
    route.stations[@station_now_index - 1]
  end
#движение на следующую станицию
  def move_next_station
    return unless next_station
    station_now.send(self)
    @station_now_index +=1
    station_now.arrive(self)
  end
#движение на предыдущую станцию
  def move_past_station
    return unless past_station
    station_now.send(self)
    @station_now_index -=1
    station_now.arrive(self)
  end
end



