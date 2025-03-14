
# Welcome Script
Author - Apu Roy

This repository contains a script that displays a welcome message with your name in a stylized format using `figlet` and `lolcat`.

## How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/apthoo/name-banner-linux.git
   cd name-banner-linux
   ls
   README.md  setup.sh  welcome.sh
   chmod u+x welcome.sh
   chmod u+x setup.sh
   bash welcome.sh
   setup.sh
         -----or-----
   git clone https://github.com/apthoo/name-banner-linux.git
   cd name-banner-linux
   chmod u+x boot.sh
   ./boot.sh
   

---

### How It Works:
1. The user clones the repository.
2. The user runs `setup.sh`, which:
   - Makes `welcome.sh` executable.
   - Adds `welcome.sh` to the user's shell configuration file (`.bash_profile` or `.bashrc`).
3. When the user opens a new terminal, `welcome.sh` runs automatically, prompting the user to enter their name and displaying it in a stylized format.

---

### Notes:
- Replace `~/path/to/your-repo/` in `setup.sh` with the actual path to your repository.
- Ensure the user has the necessary permissions to install packages (e.g., `sudo` access).
- If the user is on Termux or another environment, you may need to adjust the package manager commands accordingly.
