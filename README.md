# Windows Batch Scripts Collection

A collection of useful Windows batch scripts for system utilities, file management, and drive operations.

## ⚠️ Important Warning

**USE THESE SCRIPTS WITH CAUTION!** Some scripts perform destructive operations like deleting files or modifying system settings. Always:
- Read and understand what a script does before running it
- Backup your important data
- Run scripts with appropriate permissions
- Test in a safe environment first

## 📋 Scripts Overview

### File Management

#### `hidden_all_file.bat`
Hides all files and folders in the current directory by setting hidden, system, and read-only attributes.
- **Usage**: Run in the target directory
- **Command**: `attrib * +s +h +r /d /s`
- **Effect**: Makes all files invisible in normal view

#### `unhidden_all_file.bat`
Unhides all files and folders in the current directory by removing hidden, system, and read-only attributes.
- **Usage**: Run in the target directory to reveal hidden files
- **Command**: `attrib * -s -h -r /d /s`
- **Effect**: Makes all files visible again

#### `Delete_all_file.bat`
**⚠️ DANGEROUS!** Deletes multiple file types in the current directory without confirmation.
- **Deletes**: `.txt`, `.mp4`, `.mp3`, `.avi`, `.jpg`, `.png`, `.pdf` files
- **Warning**: This operation is irreversible!
- **Use case**: Bulk cleanup (use with extreme caution)

### Security & Protection

#### `K_KNIGHT_PROTECTOR.bat`
A comprehensive USB/drive protection script that:
- Unhides files hidden by viruses
- Removes common autorun malware threats
- Deletes suspicious files (autorun.inf, mahasona.exe, etc.)
- Cleans up virus-created shortcuts
- **Created by**: KOLITHA HIROSHANA / SUDHARAKA PERERA

#### `My Antivirus.bat`
Similar to K_KNIGHT_PROTECTOR - removes common USB viruses and malware:
- Unhides system files
- Removes autorun threats
- Cleans virus executables
- **Created by**: KOLITHA HIROSHANA / SUDHARAKA PERERA

#### `virus clener.bat`
Another variant of the virus cleaning utility with ASCII art banner:
- Unhides files
- Removes malware threats
- Cleans infected drives
- **Created by**: KOLITHA HIROSHANA / SUDHARAKA PERERA

### System Configuration

#### `Turn_Off_Fast_Startup.bat`
Disables Windows Fast Startup feature.
- **Registry**: Modifies `HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power`
- **Effect**: Sets `HiberbootEnabled` to 0
- **Requires**: Administrator privileges
- **Credit**: Created by Shawn Brink from tenforums.com

#### `Turn_On_Fast_Startup.bat`
Enables Windows Fast Startup feature.
- **Actions**: 
  - Enables hibernate (`powercfg -h on`)
  - Sets `HiberbootEnabled` to 1
- **Requires**: Administrator privileges
- **Credit**: Created by Shawn Brink from tenforums.com

### Drive Backup

#### `g_drive.bat`
Backs up entire G: drive to D:\copy_g
- **Command**: `XCOPY G: D:\copy_g /E /H /I /Q /Y`
- **Flags**: Copies subdirectories (including empty), hidden/system files, suppresses prompts
- **Attributes**: Sets index attribute on backup

#### `g_drive.vbs`
VBScript helper for g_drive operations

#### `h_drive.bat`, `i_drive.bat`, `j_drive.bat`
Similar drive backup utilities for other drive letters

### Other Utilities

#### `print.bat`
Printing utility script

#### `hack_password.bat`, `hack_password2.bat`
Password-related utilities (details unclear - inspect before use)

## 🚀 Usage Instructions

### Running Scripts

1. **Right-click** on the .bat file
2. Select **"Run as administrator"** (required for system modifications)
3. Read any warnings displayed
4. Press any key when prompted to continue

### Administrator Privileges

Many scripts require administrator rights. To run:
```
Right-click → Run as administrator
```

### Safe Testing

Before using any script on important data:
1. Create a test folder with sample files
2. Run the script there first
3. Verify the results
4. Only then use on actual data

## 🔧 Customization

You can edit these scripts with any text editor:
- Notepad
- VS Code
- Notepad++

Modify file paths, drive letters, or file extensions to suit your needs.

## ⚙️ Technical Details

### File Attributes
- `+h` / `-h`: Hidden attribute
- `+s` / `-s`: System attribute
- `+r` / `-r`: Read-only attribute
- `/d`: Process directories
- `/s`: Process subdirectories

### Registry Operations
Scripts that modify registry require admin rights and can affect system behavior.

## 📝 Credits

- **K KNIGHT PROTECTOR Series**: Created by KOLITHA HIROSHANA / SUDHARAKA PERERA
- **Fast Startup Scripts**: Created by Shawn Brink (tenforums.com)

## ⚖️ License

Use these scripts at your own risk. No warranty is provided. Always backup your data before running system modification scripts.

## 🤝 Contributing

Feel free to fork, modify, and improve these scripts for your needs.

---

**Last Updated**: January 2026
