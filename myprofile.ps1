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

function gcm ([string] $arg1) { 
    $full_branch_name = git rev-parse --abbrev-ref HEAD
    $regex = "(ASX-([0-9]{3,5}))";
    $asx_and_task_number = ($full_branch_name -split $regex)[1]
    $task_number_and_commit_message = $asx_and_task_number + ": " + $arg1;
    & git commit -am $task_number_and_commit_message
};

function gb { 
    & git branch $args 
};

function gc { 
    & git checkout $args 
};


# Fjerner stoy fra de tidligere kommandoene
Clear-Host
