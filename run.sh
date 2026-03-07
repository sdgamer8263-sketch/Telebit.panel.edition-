#!/bin/bash

# Colors for UI
CYAN='\033[0;36m'
MAGENTA='\033[1;35m'
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
NC='\033[0m' 
BOLD='\033[1m'

# Main Menu Loop
while true; do
    clear
    echo -e "${CYAN}-------------------------------------------------------${NC}"
    echo -e "${MAGENTA}  ____  ____   ____    _    __  __ _____ ____  "
    echo " / ___||  _ \ / ___|  / \  |  \/  | ____|  _ \ "
    echo " \___ \| | | | |  _  / _ \ | |\/| |  _| | |_) |"
    echo "  ___) | |_| | |_| |/ ___ \| |  | | |___|  _ < "
    echo " |____/|____/ \____/_/   \_\_|  |_|_____|_| \_\\"
    echo -e "${CYAN}-------------------------------------------------------${NC}"
    echo -e "${WHITE}             WELCOME TO SDGAMER INSTALLER              ${NC}"
    echo -e "${CYAN}-------------------------------------------------------${NC}"
    echo "Select an option to install:"
    echo -e "${GREEN}10)${NC}Puffer Panel"
    echo -e "${GREEN}10)${NC}Hydra Panel"
    echo -e "${RED}0) Exit${NC}"
    echo -e "${CYAN}-------------------------------------------------------${NC}"

    read -p "Enter your choice [0-9]: " main_choice

    case $main_choice in
        1) bash <(curl -s https://raw.githubusercontent.com/sdgamer8263-sketch/Telebit.panel.edition-/main/PufferPanel/PufferPanel.sh) ;;
        2) bash <(curl -s https://raw.githubusercontent.com/sdgamer8263-sketch/Telebit.panel.edition/main/Hydra/Hydra.sh) ;;
        
        0)
            echo -e "${YELLOW}Redirecting... Goodbye!${NC}"
            
            exit 0
            ;;
        *)
            echo -e "${RED}Invalid selection. Try again.${NC}"
            sleep 1
            ;;
    esac
done
