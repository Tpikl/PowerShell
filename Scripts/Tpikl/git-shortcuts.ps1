New-Module git-shortcuts {

# --- Functions ----------------
# Git Shortcuts
    function gFe { git fetch --tags --prune }
    function gBr { git branch -a }
    function gSt { git status }
    function gLo { git log }
    function gRe { git restore * }
    function gCh {
        [CmdletBinding()]
        param (
            [string]$branchName
        )
        git checkout $branchName
    }
    function gPu {
        [CmdletBinding()]
        param (
            [string]$branchName
        )
        git pull origin $branchName
    }
    function gNB {
        [CmdletBinding()]
        param (
            [string]$branchName
        )
        git checkout -b $branchName
    }

# Command help
    function gitShortcuts {
        echo "-- Git Commands: ---"
        echo "gFe - 'git fetch --tags --prune'"
        echo "gBr - 'git branch -a'"
        echo "gSt - 'git status'"
        echo "gLo - 'git log'"
        echo "gRe - 'git restore *'"
        echo "gCh - 'git checkout [branchName]'"
        echo "gPu - 'git pull origin [branchName]'"
        echo "gNB - 'git checkout -b [branchName]'"
        echo ""
    }
# --- Functions ----------------


# Exports ----------------------
    Export-ModuleMember gFe
    Export-ModuleMember gBr
    Export-ModuleMember gSt
    Export-ModuleMember gLo
    Export-ModuleMember gRe
    Export-ModuleMember gCh
    Export-ModuleMember gPu
    Export-ModuleMember gNB

    Export-ModuleMember gitShortcuts
# Exports ----------------------

} | Import-Module
