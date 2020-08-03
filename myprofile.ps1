# Setter tittelen paa vinduet
$host.ui.RawUI.WindowTitle = "Power of the shell";

# Lager en for vim, saa man benytter vim i WSL istedenfor i powershell
function vim ($File) {
    $File = $File -replace '\\', '//' -replace '\', '/'
    bash -c "vim $File"
}


# funksjoner for git

function gs { 
    & git status $args 
}

function ga {
    & git add $args
}

function gitc { 
    param ($m)
    if ($null -eq $m) {
        read-host -Prompt "Add your commit message: "
    }
    $full_branch_name = & git rev-parse --abbrev-ref HEAD
    $regex = "(ASX-([0-9]{3,5}))";
    $asx_and_task_number = ($full_branch_name -split $regex)[1]
    $final_commit_message;
    if ($null -eq $asx_and_task_number) {
        $final_commit_message = $m;
    }
    else {
        $final_commit_message = $asx_and_task_number + ": " + $m;
    }
    & git commit -am $final_commit_message;
}

function gb { 
    & git branch $args 
};

function gc { 
    & git checkout $args 
};


# Fjerner stoy fra de tidligere kommandoene
Clear-Host
