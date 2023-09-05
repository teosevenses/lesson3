
class Route
attr_reader :stations

#создаем маршрут
  def initialize(start_station, last_station)
@stations = [start_station, last_station]
  end
#добавляем станцию
  def between_station(station)
  @stations.insert(-1, between_station)
  end
#удаляем станцию
  def between_station(station)
  @stations.delete(station)
  end
#выводим список всех станций
  def all_stations
  @stations.each { |station| puts station}
  end
end
