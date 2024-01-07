# DIY-DRM

DIY-DRM is a simple, customizable Digital Rights Management solution created in batch scripting by **Karots77**. This project allows users to implement basic DRM functionalities by associating game access with specific machine hostnames.

## Features:
- **Custom DRM Implementation:** Users can secure access to their software by tying it to specific machine hostnames.
- **Automated Setup:** Simple batch scripts handle the setup process, saving the hostname and managing executable file extensions.
- **Basic Security Measures:** Renaming executable files and checking hostnames to control access to the software.

## How It Works:
The project consists of two main batch files:
- **`gettingname.bat`:** Captures the machine's hostname, saves it to a hidden `.k77` file (only in V2), and renames executable files.
- **`checkingname.bat`:** Checks the stored hostname against the current hostname before running the executable.

## Usage:
1. Copy `gettingname.bat` and `checkingname.bat` into the game directory where the launching game executable (`gta6.exe` for example) is located.
2. Modify `checkingname.bat` and change the executable filename accordingly. For example, replace `"gta6.exe"` with your actual game's executable filename.
3. Create a shortcut of `checkingname.bat`, rename it to the game name, and change the icon as well.

This project serves as an educational example and is not intended for robust security measures.

## Contributing:
Contributions, suggestions, and improvements to the code are welcome! Feel free to fork the project and create pull requests.

## Disclaimer:
This project demonstrates a basic DRM concept. It's crucial to implement robust security measures for real-world applications.
