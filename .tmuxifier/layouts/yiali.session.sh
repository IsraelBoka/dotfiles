# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Projects/Engeem/kafka-ui-engeem/"

# test the thing

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "yiali"; then
  new_window "Server"
  new_window "Backend"
  new_window "Frontend"
  select_window 0
  run_cmd "cd frontend && nvm use && pnpm dev"
  split_h 50
  run_cmd "cd ~/Projects/backend-yiali/ && docker compose -f ./docker-compose-local.yaml up"
  split_v
  run_cmd "cd ~/Projects/backend-yiali/ && ./mvnw spring-boot:run"
  select_window 1
  run_cmd "cd ~/Projects/backend-yiali/ && nvim ."
  select_window 2
  run_cmd "cd frontend && nvim ."
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
