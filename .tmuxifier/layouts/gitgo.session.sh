# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Projects/GolangProjects/fromTheGitGo/"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "gitgo"; then
  new_window
  new_window
  select_window 0
  run_cmd "n ."
  select_window 1
  split_v
  run_cmd "cd ~/Projects/GolangProjects/TestGitGo"
  select_window 0
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
