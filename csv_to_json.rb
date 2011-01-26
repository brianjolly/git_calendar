require 'rubygems'
require 'json'

file = File.open("out.csv", "r")

keys = file.readline().chomp!.split(",")
output = []

file.each_line do |line|
  iter = 0
  assoc = {}
  line.chomp.split(",").each do |v|
    assoc[keys[iter]] = v
    iter += 1
  end
  output.push(assoc)
end
puts output.to_json
