New-Module shortcuts {

# --- Functions ----------------
  function expl { explorer . }  # Open explorer folder in current directory.
  function wksp { cd C:\wksp }  # CD to workspace dir.
# --- Functions ----------------


# --- Exports ------------------
  Export-ModuleMember expl
  Export-ModuleMember wksp
# --- Exports ------------------

} | Import-Module
