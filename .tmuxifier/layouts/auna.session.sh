# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Projects/auna"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "auna"; then

  new_window "server"
  new_window "frontend editor"
  new_window "backend editor"
  select_window 0
  run_cmd "ng serve"
  split_h
  run_cmd "cd ~/Projects/backend-auna/ && ./mvnw spring-boot:run"
  select_window 1
  run_cmd "n ."
  select_window 2
  run_cmd "cd ~/Projects/backend-auna/ && n"
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
