# Display OS Notification
function os:notify(){
  osascript -e 'display notification "'"$2"'" with title "'"$1"'" sound name "Submarine"'
}
function os:confirm(){
  osascript -e 'display alert "'"$2"'" message "'"$1"'"'
  #echp $(button returned:)
}
function os:speak(){
  osascript -e 'say "'"$1"'"'
}