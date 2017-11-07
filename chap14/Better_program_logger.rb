$log_count = 0
def log name, &block
  indent = " " * $log_count
  puts indent + "Start " + name
  $log_count = $log_count + 1
  result = block.call
  $log_count = $log_count - 1 #had to look this up... why?
  puts indent + " Finished " + name + " return :"  + result.to_s
end

#a block within a block within a block etc "Russina doll"
log "Masive Block" do
  log "Big Block" do
    log "Medium Block" do
      log "Small Block" do
        log "Tiny Block" do
          "I'm tiny".upcase
        end
        "llamS m'I".reverse
      end
      average = (5.0 + 6.0 + 2.0 + 7.0 + 8.0)/5.0
      "The Average of 5,6,2,7,8 is: " + average.to_s
    end
    "big, big, big"
  end
  log "Bigger Block" do
    "But I'm bigger..."
  end
  "Always a bigger fish!"
end
