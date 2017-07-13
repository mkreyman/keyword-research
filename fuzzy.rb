# gem install fuzzy_match
require 'fuzzy_match'

keywords = []

IO.foreach('Export_yoga_mats_US_542152.txt') do |line|
   keywords << line.strip
end

# groupings = [
#   /yoga/i,
#   /mat/i,
#   [ /women/i, /roller/i ]
# ]

# groupings = [
#   /yoga/i,
#   /mat/i
# ]

# fz = FuzzyMatch.new(keywords, groupings: groupings)

fz = FuzzyMatch.new(keywords)

puts fz.find('roller')

