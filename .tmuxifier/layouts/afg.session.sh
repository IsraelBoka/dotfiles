# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Projects/afg-consulting/"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "afg"; then
  new_window 
  new_window 
  select_window 0
  run_cmd "php artisan serve"
  split_h 50
  run_cmd "sqlite3 database/database.sqlite"
  split_v
  run_cmd "npm run dev"
  select_window 1
  run_cmd "nvim ."
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
