# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Documents/projects"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "default"; then

  # Create a new window inline within session layout definition.
  new_window "editor"
  split_v 1
  select_pane 0
  run_cmd "nvim ."

  new_window "editor2"
  split_h 50
  run_cmd "nvim ."
  select_pane 0
  run_cmd "nvim ."

  select_window "editor"
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
