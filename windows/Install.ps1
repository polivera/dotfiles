# Adding Powershell configuration
New-Item -Type Directory -Path C:\Users\Pablo\Documents\PowerShell\
New-Item -Type SymbolicLink -Target C:\Users\Pablo\WinProjects\Personal\dotfiles\windows\Microsoft.PowerShell_profile.ps1 -Path C:\Users\Pablo\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

# Create Config folder
New-Item -Type Directory -Path C:\Users\Pablo\.config

# Link Git Configuration
New-Item -Type SymbolicLink -Target C:\Users\Pablo\WinProjects\Personal\dotfiles\configs\git -Path C:\Users\Pablo\.config\git
New-Item -Type SymbolicLink -Target C:\Users\Pablo\WinProjects\Personal\dotfiles\configs\starship\starship.toml -Path C:\Users\Pablo\.config\starship.toml