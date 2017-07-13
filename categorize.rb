require 'categorize'

include Categorize

keywords = []

IO.foreach('Export_yoga_mats_US_542152.txt') do |line|
   keywords << line.strip
end

hierarchical_model = Models::HierarchicalCluster.new

# out = Model.make_model('yoga', keywords)

out = Model.make_model('mat', keywords, hierarchical_model)
print out