#!/data/data/com.termux/files/usr/bin/bash

# Termux Automator Pro v2.0
# Developed by: Edun Oluwadarasimi David
# CEO of Smart Tech Programming
# Website: https://edunoluwadarasimidavid.name.ng
# © 2025 Smart Tech Programming. All Rights Reserved.

GREEN='\033[1;32m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
NC='\033[0m'

banner() {
  clear
  echo -e "${CYAN}"
  echo "████████╗███████╗██████╗ ███╗   ███╗ █████╗ ██╗   ██╗████████╗ ██████╗ ██████╗ "
  echo "╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗██╔══██╗"
  echo "   ██║   █████╗  ██████╔╝██╔████╔██║███████║██║   ██║   ██║   ██║   ██║██████╔╝"
  echo "   ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██╔══██║██║   ██║   ██║   ██║   ██║██╔═══╝ "
  echo "   ██║   ███████╗██║  ██║██║ ╚═╝ ██║██║  ██║╚██████╔╝   ██║   ╚██████╔╝██║     "
  echo "   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝ ╚═╝     "
  echo -e "${NC}"
  echo -e "${GREEN}By Edun Oluwadarasimi David • Smart Tech Programming${NC}"
  echo -e "${YELLOW}Tip: Use this script to automate your Android like a pro hacker!${NC}"
}

main_menu() {
  banner
  echo -e "${CYAN}[1] Auto Install Developer Tools"
  echo -e "[2] Launch Web/React Project Builder"
  echo -e "[3] Create Local Tunnel with Ngrok"
  echo -e "[4] Terminal UI Customizer (Colors, Prompt, Fonts)"
  echo -e "[5] Device Info, Network Speed Test"
  echo -e "[6] Secure Encrypted File Vault"
  echo -e "[7] Plugin Loader (Run Your Own Scripts)"
  echo -e "[8] Update Script (via Git or Zip)"
  echo -e "[9] Help & Tips"
  echo -e "[0] Exit${NC}"
  echo ""
  read -p "Choose an option: " choice

  case $choice in
    1) bash modules/tools.sh ;;
    2) bash modules/web-project.sh ;;
    3) bash modules/ngrok-setup.sh ;;
    4) bash modules/ui-custom.sh ;;
    5) bash modules/info.sh ;;
    6) bash modules/vault.sh ;;
    7) bash modules/plugins.sh ;;
    8) bash update.sh ;;
    9) bash modules/help.sh ;;
    0) exit ;;
    *) echo "Invalid input. Try again."; sleep 1; main_menu ;;
  esac
}

check_dependencies() {
  for dep in curl wget git termux-setup-storage termux-api jq; do
    if ! command -v $dep &>/dev/null; then
      echo "Installing $dep..."
      pkg install -y $dep > /dev/null
    fi
  done
}

init_script() {
  mkdir -p ~/.automator-pro/{modules,config,plugins}
  check_dependencies
  main_menu
}

init_script
