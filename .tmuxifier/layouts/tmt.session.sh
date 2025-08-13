# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Projects/tmt-project/tmt"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "tmt"; then

  # Create a new window inline within session layout definition.
  new_window
  new_window
  new_window
  select_window 0
  run_cmd "composer run dev"
  split_h
  run_cmd "sqlite3 database/database.sqlite"
  split_v
  run_cmd "cd ../tmt-mobile && npx expo start"
  select_window 1
  run_cmd "n"
  select_window 2
  run_cmd "cd ../tmt-mobile && n"

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
