# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year.
# Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur
# in any year that is evenly divisible by 4. Using this informationupdate the method from
# the previous exercise to determine leap years both before and after 1752.

def leap_year?(year)
  if year < 1752 == true && year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

p leap_year?(2016)
p leap_year?(2015)
p leap_year?(2100)
p leap_year?(2400)
p leap_year?(240000)
p leap_year?(240001)
p leap_year?(2000)
p leap_year?(1900)
p leap_year?(1752)
p leap_year?(1700)
p leap_year?(1)
p leap_year?(100)
p leap_year?(400)