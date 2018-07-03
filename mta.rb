require 'rainbow'

$number_of_stops = 0

$stations = {
  'N' => ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th'],
  'L' => ['8th', '6th', 'Union Square', '3rd', '1st'],
  '6' => ['Grand Central', '33rd', '28th', '23rd', 'Union Square', 'Astor Place']
}

def plan_trip(start_line, start_station, end_line, end_station)
  puts Rainbow("You want to travel from #{start_station} on #{start_line} to #{end_station} on #{end_line}").aqua

  #  reset number_of_stops to zero
  $number_of_stops = 0

  change_required = start_line != end_line

  if change_required
    #   implement print_all_stations_between function, taking arguments from plan_trip passed arguments
    puts "You must travel through the following stops on the #{start_line} line: #{print_all_stations_between(start_station, 'Union Square', start_line)}"
    puts Rainbow('change at Union Square').orangered
    puts "Your journey continues through the following stops: #{print_all_stations_between('Union Square', end_station, end_line)}"
  else
    puts "You must travel through the following stops on the #{start_line} line: #{print_all_stations_between(start_station, end_station, start_line)}. You do not need to change at all."
  end

  puts Rainbow("#{$number_of_stops} stops in total").lawngreen
  puts ''
end

def print_all_stations_between(station_a, station_b, line)
  index_of_a = $stations[line].index(station_a)
  index_of_b = $stations[line].index(station_b)

  if index_of_b > index_of_a
    stops = $stations[line][index_of_a + 1..index_of_b]
  else
    stops = $stations[line][index_of_b..index_of_a - 1]
    stops.reverse!
  end

  $number_of_stops += stops.size

  stops.join(', ')
end

# Test using example in question
puts Rainbow('****** Test using example in question *********').violet
plan_trip 'N','Times Square', '6', '33rd'

# Test using trip that doesn't go to union square
puts Rainbow("*** Test using trip that doesn't go to union square ***").violet
plan_trip '6', 'Grand Central', '6', '28th'

# Test using trip that goes to union square but does not change line`
puts Rainbow('*** Test using trip that goes to union square but does not change line ***').violet
plan_trip '6', 'Grand Central', '6', 'Union Square'

# Test using trip that goes 8th to 1st and uses L line
puts Rainbow('*** Test using trip that dgoes 8th to 1st and uses L line ***').violet
plan_trip 'L', '8th', 'L', '1st'

# Test using trip that goes 8th to 1st and uses N line
puts Rainbow('*** Test using trip that goes 8th to 1st and uses N line ***').violet
plan_trip 'N', '8th', 'L', '1st'

puts "*****testing the colours from rainbow gem!!!*****"

puts Rainbow("this is red").red
puts Rainbow("this is magenta").magenta
puts Rainbow("this is siler").silver
puts Rainbow("this is indianred").indianred
puts Rainbow("this is aliceblue").aliceblue
puts Rainbow("this is aqua").aqua
puts Rainbow("this is green").green
puts Rainbow("this is yellow").yellow
puts Rainbow("this is blue").blue
puts Rainbow("this is cyan").cyan
puts Rainbow("this is yellow").yellow
puts Rainbow("this is white").white
