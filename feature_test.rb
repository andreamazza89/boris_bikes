Dir['./lib/*'].each {|f| require f}

puts "Van object collects items"

van= Van.new

bikes= Array.new(5, Bike.new)
puts "now loading items"
van.load(bikes)
puts "#{bikes.count} items loaded"

puts "Van objects unloads all items"
puts "now unloading items"
delivery=  van.unload
puts "#{delivery.count} items delivered"





