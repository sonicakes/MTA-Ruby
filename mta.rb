def plan_trip(start_line, start_station, end_line, end_station)
    return "called plan trip"
end

# Test using example in question
puts "****** Test using example in question *********"
puts plan_trip 'N', 'Times Square', '6', '33rd'

# Test using trip that doesn't go to union square
puts "*** Test using trip that doesn't go to union square ***"
puts plan_trip '6', 'Grand Central', '6', '28th'

# Test using trip that goes to union square but does not change line`
puts "*** Test using trip that goes to union square but does not change line ***"
puts plan_trip "6", "Grand Central", "6", "Union Square"

# Test using trip that goes 8th to 1st and uses L line
puts "*** Test using trip that dgoes 8th to 1st and uses L line ***"
puts plan_trip "L", "8th", "L", "1st"

# Test using trip that goes 8th to 1st and uses N line
puts "*** Test using trip that goes 8th to 1st and uses N line ***"
puts plan_trip "N", "8th", "L", "1st"