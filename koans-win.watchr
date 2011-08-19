# This is for automatically compiling .coffee to .js 
watch('koans\/.*\.coffee') {|match| system "cake build"}

# This compiles the completed koans dir 
# I'm using this for testing
watch('completed-koans\/.*\.coffee') {|match| system "cake test"}
