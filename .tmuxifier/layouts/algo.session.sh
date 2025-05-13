# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Projects/algo/ts-algo/"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "algo"; then

  new_window
  run_cmd "nvim"
  split_v 50
  run_cmd "neofetch"
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
