# Ultimate Disk Cleanup

A PowerShell script that, at the press of a button, will free up disk space by deleting temporary files, browser caches, logs, and leftover installer files. It is safe to run and shows a space freed summary.

## Features

- Delete user and Windows temp files  
- Empties the Recycle Bin  
- Clears Edge/IE cache  
- Clears Windows Update downloads  
- Clears Chrome and Firefox caches  
- Clears cache in Discord  
- Removes temporary files in Downloads  
- Removes log files in Documents  
- Reports disk space freed at the end  

## Requirements

- Windows 10 or later  
- PowerShell 5.1 or higher  
- No extra software needed  
- Running as Administrator is recommended for full cleanup  

## Usage

1. Download the script from main tree.  
2. Find the script file `diskcleanuplus.ps1`.  
3. Double-click the script **or** right-click → **Run with PowerShell**.  
4. If Windows blocks the script, you only need to allow scripts to run once:
   1. Right-click PowerShell → Run as Administrator  
   2. Run this command:
   ```powershell
   Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
