# abort if we're already inside a TMUX session
[ "$TMUX" == "" ] || exit 0 

if [ "$SSH_TTY" == "" ]; then
  exit 0
fi

# startup a "default" session if none currently exists
#tmux has-session -t _default || tmux new-session -s _default -d

# present menu for user to choose which workspace to open
PS3="Please choose your session: "
options=($(tmux list-sessions -F "#S") "NEW SESSION" "BASH" "GDB")
echo "Available sessions"
echo "------------------"
echo " "
select opt in "${options[@]}"
do
  case $opt in
    "NEW SESSION")
      read -p "Enter new session name: " SESSION_NAME
      tmux -2 new -s "$SESSION_NAME"
      break
      ;;
    "BASH")
      bash --login
      break;;
    "GDB")
      tmux -r 
      break;;
    *) 
      tmux attach-session -d -t $opt 
      break
      ;; 
  esac
done    
