# This is for automatically compiling .coffee to .js 
# ChromeReloadr.sh is an AppleScript that reloads the active Chrome tab
watch('koans\/.*\.coffee') {|match| system "cake build; ./ChromeReloadr.sh"}

# This compiles the completed koans (and reloads Chrome tab), 
# I'm using this for testing
watch('completed-koans\/.*\.coffee') {|match| system "cake test; ./ChromeReloadr.sh"}
