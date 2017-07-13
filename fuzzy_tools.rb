# https://github.com/brianhempel/fuzzy_tools
# gem install fuzzy_tools --no-ri --no-rdoc
require 'fuzzy_tools'

keywords = []

IO.foreach('Export_yoga_mats_US_542152.txt') do |line|
   keywords << line.strip
end

# Search for a single object

keywords.fuzzy_find("pants")
keywords.fuzzy_index.find("pants")
FuzzyTools::TfIdfIndex.new(:source => keywords).find("yoga mat")

# Search for all matches, from best to worst

keywords.fuzzy_find_all("pants")
keywords.fuzzy_index.all("pants")
FuzzyTools::TfIdfIndex.new(:source => keywords).all("pants")

# You can also get scored results, if you need

keywords.fuzzy_find_all_with_scores("pants")

keywords.fuzzy_index.all_with_scores("pants")

FuzzyTools::TfIdfIndex.new(:source => keywords).all_with_scores("pants")

blocks = _
blocks.select { |kw, rank| rank > 0.18 }
