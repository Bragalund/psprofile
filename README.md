# PowerShell Profile

Custom PowerShell profile that sets a window title, adds a WSL-backed `vim` helper, and provides Git shortcuts tailored for branching workflows that include ticket numbers.

## Features
- Sets the console title to “Power of the shell”
- `vim` function opens files in WSL Vim while converting Windows paths
- Git helpers: `gs` (status), `ga` (add), `gitc` (commit with optional ticket prefix from branch name), `gb` (branch), `gc` (checkout)
- Clears the console on load for a clean prompt

## Installation
1) Copy `myprofile.ps1` to your PowerShell profile path, e.g.:
```powershell
Copy-Item myprofile.ps1 $PROFILE
```
2) Restart PowerShell. Ensure Git and WSL (for the `vim` wrapper) are available if you use those helpers.

## Contributing
Issues and pull requests are welcome. Please document any new aliases or behaviors in the script comments.

## License
This project is open source under the terms of the `LICENSE` file in this repository.
