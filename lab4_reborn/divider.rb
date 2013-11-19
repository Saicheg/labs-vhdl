require 'pry'

FILE= "blinkenlights_spec_fixtures.txt"
DIVIDER=100

file = File.open(FILE, 'r')
data = file.read.split("\n")
file.close

result = File.new("blinkenlights_spec_fixtures_#{DIVIDER}", "w")

data.each_slice(2) do |pair|
  DIVIDER.times do
    result.puts pair.join("\n")
  end
end
