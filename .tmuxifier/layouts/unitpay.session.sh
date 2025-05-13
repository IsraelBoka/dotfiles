# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Projects/unitpay/"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "unitpay"; then
  new_window
  new_window "Frontend"
  new_window "Backend"
  select_window 0
  run_cmd "cd frontend && npm run start"
  split_h 50
  run_cmd "neofetch"
  select_window 1
  run_cmd "cd frontend && nvim ."
  select_window 2
  run_cmd "cd backend && nvim ."
  split_v 50
  run_cmd "cd backend && air"
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
