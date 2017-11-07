#cool bit of code times code
$profiling_on = false #think $ makes it golbal var...
def profile block_descritption, &block
  if $profiling_on
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_descritption}: #{duration} seconds"
  else
    block[] #same as block.call
  end
end

profile "25000 doublings" do
  number = 1
  25000.times do
    number = number + number
  end
  puts "#{number.to_s.length} digits"
end

profile "count to a million" do
  number = 0
  1000000.times do
    number = number + 1
  end
end
