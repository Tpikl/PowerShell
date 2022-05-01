New-Module git-shortcuts {

# --- Functions ----------------
    function g.Fetch { git fetch --tags --prune }
    function g.Branches { git branch -a }
    function g.Status { git status }
    function g.Log { git log }
    function g.Restore { git restore * }
    function g.Checkout {
        [CmdletBinding()]
        param (
            [string]$branchName
        )
        git checkout $branchName
    }
    function g.Pull {
        [CmdletBinding()]
        param (
            [string]$branchName
        )
        git pull origin $branchName
    }
    function g.NewBranch {
        [CmdletBinding()]
        param (
            [string]$branchName
        )
        git checkout -b $branchName
    }
# --- Functions ----------------


# --- Exports ------------------
    Export-ModuleMember g.Fetch
    Export-ModuleMember g.Branches
    Export-ModuleMember g.Status
    Export-ModuleMember g.Log
    Export-ModuleMember g.Restore
    Export-ModuleMember g.Checkout
    Export-ModuleMember g.Pull
    Export-ModuleMember g.NewBranch
# --- Exports ------------------

} | Import-Module
