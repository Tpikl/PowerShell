New-Module shortcuts {

# --- Functions ----------------
  function expl { explorer . }  # Open explorer folder in current directory.
# --- Functions ----------------


# --- Exports ------------------
  Export-ModuleMember expl
# --- Exports ------------------

} | Import-Module
